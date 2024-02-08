#!/bin/bash
echo "Installing & starting mongodb"
sleep 60
apt install -y mongodb
systemctl enable mongod
systemctl start mongodb
