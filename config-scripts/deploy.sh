#!/bin/bash
echo "Deploying & installing reddit-monolith"
sudo apt install -y git
cd ~/
git clone -b monolith https://github.com/express42/reddit.git
cd ~/reddit
bundle install
puma -d
ps aux | grep puma
