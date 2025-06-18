from flask import Flask

app = Flask(__name__)

@app.route('/')
def index():
    return "<h1>Frontend - PROD</h1><p>This is the UI for the PROD environment.</p>"
