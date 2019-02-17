# This file is part of the Trustless Health project.
#
# For license information, please see the LICENSE file in the root directory.

from flask import Flask, request, jsonify
from flask_cors import CORS, cross_origin
import base64
import nufhe
import zlib

ctx = nufhe.Context()
app = Flask(__name__)
CORS(app)


@app.route("/generate_key_pair", methods=['POST'])
@cross_origin()
def generate_secret_key():
    secret_key, cloud_key = ctx.make_key_pair()
    cloud_key = cloud_key.dumps()
    cloud_key_compressed = zlib.compress(cloud_key)
    return jsonify(
        {
            "result": "success",
            "data": {
                "secret_key": base64.b64encode(secret_key.dumps()).decode('ascii'),
                "cloud_key": base64.b64encode(cloud_key_compressed).decode('ascii')
            }
        }
    )


@app.route('/encrypt', methods=['POST'])
@cross_origin()
def encrypt():
    data = request.json
    secret_key = nufhe.NuFHESecretKey.loads(
        base64.b64decode(data['secret_key']), ctx.thread)
    data_to_encrypt = data['data']
    ciphertext = ctx.encrypt(secret_key, data_to_encrypt)
    return jsonify(
        {
            "result": "success",
            "data":
                {
                    "encrypted_data": base64.b64encode(ciphertext.dumps()).decode('ascii')
                }
        }
    )


@app.route('/decrypt', methods=['POST'])
@cross_origin()
def decrypt():
    data = request.json
    encrypted_data = nufhe.LweSampleArray.loads(
        base64.b64decode(data['encrypted_data']), ctx.thread)
    secret_key = nufhe.NuFHESecretKey.loads(
        base64.b64decode(data['secret_key']), ctx.thread)

    result_bits = list([1 if ctx.decrypt(secret_key, a) [0] else 0 for a in encrypted_data])

    return jsonify(
        {
            "result": "success",
            "data":
                {
                    "result": result_bits
                }
        }
    )


if __name__ == "__main__":
    app.run(debug=True)
