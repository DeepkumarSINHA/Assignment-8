#!/bin/bash
sudo apt update -y
sudo apt install -y python3 python3-pip

pip3 install flask

mkdir /home/ubuntu/flask-app
cat <<EOF > /home/ubuntu/flask-app/app.py
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Flask Backend (Separate EC2) Running!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOF

nohup python3 /home/ubuntu/flask-app/app.py &
