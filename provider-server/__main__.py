# This file is part of the Trustless Health project.
#
# For license information, please see the LICENSE file in the root directory.

from flask import Flask, request, jsonify
from flask_cors import CORS, cross_origin
import nufhe
import base64
import zlib

ctx = nufhe.Context()
app = Flask(__name__)
CORS(app)

compute_wasm = '''\
  (func $compute (type 2) (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.const 7
    call $trustless_health::load_bit::he258100f90638d34
    local.get 0
    local.get 1
    i32.const 8
    call $trustless_health::load_bit::he258100f90638d34
    i32.or)
'''

class ASTNode:
    def __init__(self, command):
        self.command = command
        self.children = []

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

def perform_computation(vm, wasm, encrypted_data):
    tree = generate_ast_tree_from_wasm(wasm)

    assert tree.command == "func $compute (type 2) (param i32 i32) (result i32)"

    memory = [None] * 2

    memory[0] = 0 # array offset in memory
    memory[1] = encrypted_data.shape[0] # length of array

    stack = []
    for cmd in tree.children:
        cmd_arr = cmd.command.split(' ')
        keyword = cmd_arr[0]

        if keyword == "local.get":
            stack.append(memory[int(cmd_arr[1])])
        elif keyword == "i32.const":
            stack.append(cmd_arr[1])
        elif keyword == "call" and cmd_arr[1].startswith("$trustless_health::load_bit"):
            # load bit
            tmp = int(stack[-1])
            stack.pop()
            stack.pop()
            stack.pop()
            stack.append(encrypted_data[tmp:tmp+1])
        elif keyword == "i32.or":
            res = vm.gate_or(stack[-1], stack[-2])
            stack.pop()
            stack.pop()
            stack.append(res)
        else:
            print("Unsupported command:", cmd.command)
            exit(1)

    return stack[-1]


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

