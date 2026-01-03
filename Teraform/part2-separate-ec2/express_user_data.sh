#!/bin/bash
sudo apt update -y

curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

mkdir /home/ubuntu/express-app
cd /home/ubuntu/express-app

npm init -y
npm install express

cat <<EOF > index.js
const express = require('express');
const app = express();

app.get('/', (req, res) => {
  res.send('Express Frontend (Separate EC2) Running!');
});

app.listen(3000, () => {
  console.log('Express running on port 3000');
});
EOF

nohup node index.js &
