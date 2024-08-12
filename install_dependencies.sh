#!/bin/bash
yum install -y httpd
sudo apt-get install wget


install_path="/usr/local"
# download golang on studygolang mirror
sudo wget https://dl.google.com/go/go1.21.5.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

cd /usr/local

echo 'export PATH=$PATH:/usr/local/go/bin' | sudo tee -a /etc/profile
echo 'source completed' | sudo source /etc/profile
go version



