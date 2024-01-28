#!/bin/bash
echo "Deploying & installing reddit-monolith"
sudo apt install -y git
cd /home/yc-user
git clone -b monolith https://github.com/express42/reddit.git
cd /home/yc-user/redit
bundle install
puma -d