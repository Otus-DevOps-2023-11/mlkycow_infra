#!/bin/bash

sudo apt update
sudo apt install -y  ruby-full ruby-bundler build-essential

sudo apt update
sudo apt install mongodb -y

cd ~/
git clone -b monolith https://github.com/express42/reddit.git
cd ~/reddit && bundle install
puma -d

ps aux | grep puma
