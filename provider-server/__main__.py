# This file is part of the Trustless Health project.
#
# For license information, please see the LICENSE file in the root directory.

from flask import Flask, request, jsonify
from flask_cors import CORS, cross_origin
import nufhe
import base64
import zlib
import numpy

ctx = nufhe.Context()
app = Flask(__name__)
CORS(app)
f = open("compute.wat", "r")
compute_wasm = f.read()

class ASTNode:
    def __init__(self, command):
        self.command = command
        self.children = []

class StackVar:
    def __init__(self, value, type):
        self.value = value
        self.type = type

def get_whitespace_prefix(line):
    pos = 0
    while line[pos] == " ":
        pos += 1
    return pos

def generate_ast_tree_from_wasm(wasm):
    global_whitespace_offset = get_whitespace_prefix(wasm)
    wasm = wasm.strip()
    assert wasm[0] == "(" and wasm[-1] == ")"
    wasm = wasm[1:-1]

    tree = None

    for line in wasm.splitlines():
        if tree is None:
            # root node
            tree = ASTNode(line)
        else:
            ident_level = int((get_whitespace_prefix(line) - global_whitespace_offset) / 2)
            tmp_node = tree
            for i in range(ident_level-1):
                tmp_node = tmp_node.children[-1]
            tmp_node.children.append(ASTNode(line.strip()))
    return tree

def optionally_encrypt_bit(vm, var):
    if var.type == "i32":
        return vm.gate_constant(numpy.array([True if var.value % 2 == 1 else False]))
    return var.value

def perform_computation(vm, wasm, encrypted_data):
    tree = generate_ast_tree_from_wasm(wasm)

    memory = [None] * 100000

    memory[0] = StackVar(0, 'i32') # array offset in memory
    memory[1] = StackVar(encrypted_data.shape[0], 'i32') # length of array

    global_memory = [StackVar(5000, 'i32')] # point to global memory

    compute_command_id = 0
    for idx, function in enumerate(tree.children):
        if "$trustless_health::compute" in function.command:
            compute_command_id = idx

    stack = []
    for cmd in tree.children[compute_command_id].children:
        cmd_arr = cmd.command.split(' ')
        keyword = cmd_arr[0]

        if keyword == "(local":
            print("Found local allocation")
        elif keyword == "global.get":
            stack.append(global_memory[int(cmd_arr[1])])
        elif keyword == "global.set":
            global_memory[int(cmd_arr[1])] = stack[-1]
            stack.pop()
        elif keyword == "local.set":
            memory[int(cmd_arr[1])] = stack[-1]
            stack.pop()
        elif keyword == "local.get":
            stack.append(memory[int(cmd_arr[1])])
        elif keyword == "local.tee":
            memory[int(cmd_arr[1])] = stack[-1]
        elif keyword == "i32.const":
            stack.append(StackVar(int(cmd_arr[1]),'i32'))
        elif keyword == "i64.const":
            stack.append(StackVar(int(cmd_arr[1]),'i64'))
        elif keyword == "i32.sub":
            res = stack[-2].value - stack[-1].value
            stack.pop()
            stack.pop()
            stack.append(StackVar(res, 'i32'))
        elif keyword == "i32.shl":
            res = stack[-1].value << 1
            stack.pop()
            stack.append(StackVar(res, 'i32'))
        elif keyword == "i32.add":
            res = stack[-2].value + stack[-1].value
            stack.pop()
            stack.pop()
            stack.append(StackVar(res, 'i32'))
        elif keyword == "i32.store8":
            if len(cmd_arr) > 1:
                value_to_store = stack[-1]
                offset = int(cmd_arr[1].split("=")[1]) + stack[-2].value
                memory[offset] = value_to_store
                stack.pop()
                stack.pop()
            else:
                print("Error, not offset found")
        elif keyword == "i32.store16":
            if len(cmd_arr) > 1:
                value_to_store = list([int(a) for a in stack[-1].value.to_bytes(2, byteorder='little')])
                value_to_store = list([StackVar(a, 'i32') for a in value_to_store])
                offset = int(cmd_arr[1].split("=")[1]) + stack[-2].value
                memory[offset:offset+2] = value_to_store
                stack.pop()
                stack.pop()
            else:
                print("Error, not offset found")
        elif keyword == "i32.store":

            if len(cmd_arr) > 1:
                stack.pop()
                value_to_store = stack[-1].value
                offset = int(cmd_arr[1].split("=")[1]) + stack[-2].value
                memory[offset] = StackVar(value_to_store, 'LweArray')
                stack.pop()
            else:
                value_to_store = list([int(a) for a in stack[-1].value.to_bytes(4, byteorder='little')])
                value_to_store = list([StackVar(a, 'i32') for a in value_to_store])
                memory[stack[-2].value:stack[-2].value+4] = value_to_store
                stack.pop()
                stack.pop()
        elif keyword == "i64.store":
            tmp = list([int(a) for a in stack[-1].value.to_bytes(8, byteorder='little')])
            tmp = list([StackVar(a,'i32') for a in tmp])
            memory[stack[-2].value:stack[-2].value+8] = tmp
            stack.pop()
            stack.pop()
        elif keyword == "call" and cmd_arr[1].startswith("$trustless_health::load_bit"):
            # load bit
            assert stack[-1].type == "i32"
            tmp = stack[-1].value
            res = StackVar(encrypted_data[tmp:tmp+1],'LweArray')
            stack.pop()
            stack.pop()
            stack.pop()
            stack.append(res)
        elif keyword == "call" and cmd_arr[1].startswith("$trustless_health::byte_arr_to_u32"):
            mem = memory[stack[-2].value:stack[-2].value+stack[-1].value]
            mem2 = list([StackVar(0,'i32') if a is None else a for a in mem])
            mem3 =  list([a.value if a.type == "LweArray" else vm.gate_constant(numpy.array([True if a.value == 1 else False])) for a in mem2])
            return mem3
        elif keyword == "i32.or":
            if stack[-1].type == "i32" and stack[-2].type == "i32":
                res = StackVar(stack[-1].value | stack[-2].value, "i32")
            else:
                res = StackVar(vm.gate_or(optionally_encrypt_bit(vm,stack[-1]), optionally_encrypt_bit(vm,stack[-2])), 'LweArray')
            stack.pop()
            stack.pop()
            stack.append(res)
        elif keyword == "i32.and":
            if stack[-1].type == "i32" and stack[-2].type == "i32":
                res = StackVar(stack[-1].value & stack[-2].value, "i32")
            else:
                res = StackVar(vm.gate_and(optionally_encrypt_bit(vm,stack[-1]), optionally_encrypt_bit(vm,stack[-2])), 'LweArray')
            stack.pop()
            stack.pop()
            stack.append(res)
        elif keyword == "i32.eq":
            if stack[-1].type == "i32" and stack[-2].type == "i32":
                res = StackVar(1 if stack[-1].value == stack[-2].value else 0, "i32")
            else:
                res = StackVar(vm.gate_not(vm.gate_xor(optionally_encrypt_bit(vm,stack[-1]), optionally_encrypt_bit(vm,stack[-2]))), 'LweArray')
            stack.pop()
            stack.pop()
            stack.append(res)
        elif keyword == "i32.xor":
            if stack[-1].type == "i32" and stack[-2].type == "i32":
                res = StackVar(stack[-1].value ^ stack[-2].value, "i32")
            else:
                res = StackVar(vm.gate_xor(optionally_encrypt_bit(vm,stack[-1]), optionally_encrypt_bit(vm,stack[-2])), 'LweArray')
            stack.pop()
            stack.pop()
            stack.append(res)
        elif keyword == "select":
            res = vm.gate_mux(
                optionally_encrypt_bit(vm, stack[-1]),
                optionally_encrypt_bit(vm, stack[-3]),
                optionally_encrypt_bit(vm, stack[-2]))
            stack.pop()
            stack.pop()
            stack.pop()
            stack.append(StackVar(res, 'LweArray'))
        else:
            print("Unsupported command:", cmd.command)
            exit(1)

    return stack[-1].value


@app.route('/compute',methods=['POST'])
@cross_origin()
def encrypt():
    data = request.json
    encrypted_data = nufhe.LweSampleArray.loads(base64.b64decode(data['encrypted_data']), ctx.thread)
    cloud_key = nufhe.NuFHECloudKey.loads(zlib.decompress(base64.b64decode(data['cloud_key'])), ctx.thread)

    vm = ctx.make_virtual_machine(cloud_key)
    result = perform_computation(vm, compute_wasm, encrypted_data)

    return jsonify(
        {
            "result":"success",
            "data":
                {
                    "encrypted_result": base64.b64encode(result.dumps()).decode('ascii')
                }
        }
    )

def test():
    ctx = nufhe.Context()
    secret_key, cloud_key = ctx.make_key_pair()
    vm = ctx.make_virtual_machine(cloud_key)
    bits1 = [0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    ciphertext1 = ctx.encrypt(secret_key, bits1)

    result = perform_computation(vm, compute_wasm, ciphertext1)

    result_bits = list([ctx.decrypt(secret_key, a) for a in result])

    print(result_bits)


if __name__ == "__main__":
    test()
    #app.run(debug=True, port=5001)
