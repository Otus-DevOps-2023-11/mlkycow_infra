#!/bin/bash
echo "Installing ruby"
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
ruby -v
