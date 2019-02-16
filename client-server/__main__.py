# This file is part of the Trustless Health project.
#
# For license information, please see the LICENSE file in the root directory.

from flask import Flask, request, jsonify
from flask_cors import CORS
import json
import nufhe
import binascii

ctx = nufhe.Context()
app = Flask(__name__)
CORS(app)

@app.route("/generate_key_pair",methods=['POST'])
def generate_secret_key():
    secret_key, cloud_key = ctx.make_key_pair()
    return jsonify(
        {
            "result":"success",
            "data": {
                "secret_key": binascii.hexlify(secret_key.dumps()).decode('ascii'),
                "cloud_key": binascii.hexlify(cloud_key.dumps()).decode('ascii')
            }
        }
    )

@app.route('/encrypt',methods=['POST'])
def encrypt():
    data = request.json
    secret_key = nufhe.NuFHESecretKey.loads(binascii.unhexlify(data['secret_key']), ctx.thread)
    data_to_encrypt = data['data']
    ciphertext = ctx.encrypt(secret_key, data_to_encrypt)
    return jsonify(
        {
            "result":"success",
            "data":
                {
                    "encrypted_data": binascii.hexlify(ciphertext.dumps()).decode('ascii')
                }
        }
    )

@app.route('/decrypt',methods=['POST'])
def decrypt():
    data = request.json
    encrypted_data = nufhe.LweSampleArray.loads(binascii.unhexlify(data['encrypted_data']), ctx.thread)
    secret_key = nufhe.NuFHESecretKey.loads(binascii.unhexlify(data['secret_key']), ctx.thread)

    result_bits = ctx.decrypt(secret_key, encrypted_data)

    return jsonify(
        {
            "result":"success",
            "data":
                {
                    "result": result_bits
                }
        }
    )

if __name__ == "__main__":
    app.run(debug=True)