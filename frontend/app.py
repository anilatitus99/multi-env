from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "<h1>Frontend - STG</h1><p>This is the UI for the STG environment.</p>"
