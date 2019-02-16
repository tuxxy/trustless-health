# This file is part of the Trustless Health project.
#
# For license information, please see the LICENSE file in the root directory.

from flask import Flask, request, jsonify
from flask_cors import CORS
import nufhe
import binascii

ctx = nufhe.Context()
app = Flask(__name__)
CORS(app)

@app.route('/compute',methods=['POST'])
def encrypt():
    data = request.json
    encrypted_data = nufhe.LweSampleArray.loads(binascii.unhexlify(data['encrypted_data'], ctx.thread))
    cloud_key = nufhe.NuFHECloudKey.loads(binascii.unhexlify(data['cloud_key'], ctx.thread))

    vm = ctx.make_virtual_machine(cloud_key)
    result = vm.gate_not(encrypted_data)

    return jsonify(
        {
            "result":"success",
            "data":
                {
                    "encrypted_result": binascii.hexlify(result.dumps()).decode('ascii')
                }
        }
    )

if __name__ == "__main__":
    app.run(debug=True, port=5001)