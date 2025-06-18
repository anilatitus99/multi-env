from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def home():
    return jsonify({"message": "Hello from Backend - DEV Environment"})

@app.route('/api')
def api():
    return jsonify({"status": "success", "data": [1, 2, 3]})
