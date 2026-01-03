#!/bin/bash
apt update -y

# -------- Flask --------
apt install -y python3 python3-pip python3-venv

mkdir -p /home/ubuntu/flask-app
cd /home/ubuntu/flask-app

python3 -m venv venv
source venv/bin/activate
pip install flask

cat <<EOF > app.py
from flask import Flask
app = Flask(__name__)

@app.route("/")
def home():
    return "Flask Backend Running!"

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
EOF

nohup /home/ubuntu/flask-app/venv/bin/python app.py &

# -------- Express --------
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs

mkdir -p /home/ubuntu/express-app
cd /home/ubuntu/express-app

npm init -y
npm install express

cat <<EOF > index.js
const express = require("express");
const app = express();

app.get("/", (req, res) => {
  res.send("Express Frontend Running!");
});

app.listen(3000, "0.0.0.0", () => {
  console.log("Express running on port 3000");
});
EOF

nohup node index.js &
