#!/bin/bash
echo "Installing & starting mongodb"
sudo apt install -y mongodb
sudo systemctl enable mongod
sudo systemctl start mongodb
