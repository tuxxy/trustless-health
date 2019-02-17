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

compute_wasm = '''\
  (func $trustless_health::compute::h7a4c47c05a1a5870 (type 2) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    global.set 0
    local.get 2
    i32.const 24
    i32.add
    i32.const 0
    i32.store
    local.get 2
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    local.get 2
    i64.const 0
    i64.store
    local.get 2
    local.get 0
    local.get 1
    i32.const 1
    call $trustless_health::load_bit::h766865fc9d9aab0a
    local.tee 3
    local.get 0
    local.get 1
    i32.const 4
    call $trustless_health::load_bit::h766865fc9d9aab0a
    local.tee 4
    i32.xor
    local.tee 5
    local.get 0
    local.get 1
    i32.const 8
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 6
    i32.xor
    local.tee 7
    local.get 0
    local.get 1
    i32.const 13
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 8
    i32.xor
    local.tee 9
    local.get 0
    local.get 1
    i32.const 17
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 10
    i32.xor
    local.tee 11
    local.get 0
    local.get 1
    i32.const 21
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 12
    i32.xor
    local.tee 13
    local.get 0
    local.get 1
    i32.const 26
    call $trustless_health::load_bit::h766865fc9d9aab0a
    i32.const -1
    i32.xor
    local.tee 0
    i32.xor
    i32.store8 offset=31
    local.get 2
    local.get 11
    local.get 12
    i32.and
    local.tee 1
    local.get 9
    local.get 10
    i32.and
    local.tee 9
    local.get 7
    local.get 8
    i32.and
    local.tee 7
    local.get 5
    local.get 6
    i32.and
    local.get 4
    local.get 3
    i32.or
    i32.const -1
    i32.xor
    local.tee 3
    i32.xor
    local.tee 4
    i32.xor
    local.tee 5
    i32.xor
    local.tee 6
    i32.xor
    local.get 13
    local.get 0
    i32.and
    local.tee 0
    i32.xor
    i32.store8 offset=30
    local.get 2
    local.get 0
    local.get 6
    i32.and
    local.tee 0
    local.get 1
    local.get 5
    i32.and
    local.tee 1
    local.get 9
    local.get 4
    i32.and
    local.tee 4
    local.get 7
    local.get 3
    i32.and
    local.tee 3
    i32.xor
    local.tee 5
    i32.xor
    local.tee 6
    i32.xor
    i32.store8 offset=29
    local.get 2
    local.get 1
    local.get 5
    i32.and
    local.get 4
    local.get 3
    i32.and
    i32.xor
    local.get 0
    local.get 6
    i32.and
    i32.xor
    i32.store8 offset=28
    local.get 2
    i32.const 32
    call $trustless_health::byte_arr_to_u32::ha1723a0cb4443a41
    local.set 0
    local.get 2
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
'''

class ASTNode:
    def __init__(self, command):
        self.command = command
        self.children = []

class StackVar:
    def __init__(self, value, type):
        self.value = value
        self.type = type

class CpuVM:
    def gate_or(self, a, b):
        assert len(a) == len(b)
        res = []
        for i in range(len(a)):
            res.append(a[i]|b[i])
        return res

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

    stack = []
    for cmd in tree.children:
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
            # load bit

            mem = memory[stack[-2].value:stack[-2].value+stack[-1].value]

            mem = list([StackVar(0,'i32') if a is None else a for a in mem])

            mem2 =  list([a.value if a.type == "LweArray" else vm.gate_constant(numpy.array([True if a.value == 1 else False])) for a in mem])
            return mem2
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

if __name__ == "__main__":
    app.run(debug=True, port=5001)

def test():
    ctx = nufhe.Context()
    secret_key, cloud_key = ctx.make_key_pair()
    vm = ctx.make_virtual_machine(cloud_key)
    bits1 = [0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
    ciphertext1 = ctx.encrypt(secret_key, bits1)

    result = perform_computation(vm, compute_wasm, ciphertext1)

    result_bits = list([ctx.decrypt(secret_key, a) for a in result])

    print(result_bits)
