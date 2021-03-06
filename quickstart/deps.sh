#!/bin/bash

add-apt-repository ppa:ubuntu-lxc/lxd-stable -y
apt-get update
apt-get -y install linux-image-extra-$(uname -r)
apt-get -y install linux-image-extra-virtual
apt-get -y install curl
apt-get -y install git
apt-get -y install docker.io
apt-get -y install docker-engine
apt-get -y install cgroup-tools cgroup-bin

apt-get -y install python-pip
apt-get -y install python2.7-dev
pip install netifaces
pip install rethinkdb
pip install tornado

wget -q -O /tmp/go1.11.4.linux-amd64.tar.gz https://dl.google.com/go/go1.11.4.linux-amd64.tar.gz
tar -C /usr/local -xzf /tmp/go1.11.4.linux-amd64.tar.gz
ln -s /usr/local/go/bin/go /usr/bin/go

service docker restart
