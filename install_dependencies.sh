#!/bin/bash
yum install -y httpd
sudo apt-get install wget


install_path="/usr/local"
# download golang on studygolang mirror
wget -c -t 0 -T 1200 https://studygolang.com/dl/golang/go1.21.5.linux-amd64.tar.gz

sudo tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz

cd /usr/local

echo 'export PATH=$PATH:/usr/local/go/bin' | sudo tee -a /etc/profile
source /etc/profile



