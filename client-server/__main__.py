# This file is part of the Trustless Health project.
#
# For license information, please see the LICENSE file in the root directory.

from flask import Flask
from flask_cors import CORS
import json
import nufhe
import binascii

ctx = nufhe.Context()
app = Flask(__name__)
CORS(app)

@app.route("/generate_secret_key")
def generate_secret_key():
    secret_key = ctx.make_secret_key()
    obj = {}
    obj["secret_key"] = binascii.hexlify(secret_key.dumps()).decode('ascii')
    return json.dumps(obj)

if __name__ == "__main__":
    app.run(debug=True)