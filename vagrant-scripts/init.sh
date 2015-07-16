#!/usr/bin/env bash

echo "Installation des packets de base  ..."
sudo apt-get install -y git bridge-utils net-tools
echo "git clone ..."
cd /tmp; git clone https://github.com/j4/devstack.git
chown -R vagrant:vagrant devstack

cd devstack; su vagrant -c "RABBIT_PASSWORD='password' DATABASE_PASSWORD='password' SERVICE_PASSWORD='password' ADMIN_PASSWORD='password' SERVICE_TOKEN='password' ./stack.sh"