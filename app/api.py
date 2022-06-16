from flask import Flask, jsonify, make_response
from datetime import datetime

API_PREFIX = "/api/v1"

app = Flask(__name__)

@app.route(API_PREFIX + "/ping")
def ping():
    breakpoint()
    try:
        result = {
            "service" : "debug-container",
            "Time" : datetime.now()
        }
        print("Pinged successfully!!!!")
        return make_response(jsonify(result),200)
    except Exception as e:
        return make_response(jsonify({"Error": str(e)}),500)


if __name__ == "__main__":
    app.run(debug=False, host='127.0.0.1', port=80)
