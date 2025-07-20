#!/bin/bash


# Update package list
apt-get update

# Download node exporter
cd /tmp
wget https://github.com/prometheus/node_exporter/releases/download/v1.9.1/node_exporter-1.9.1.linux-amd64.tar.gz

tar xvfz node_exporter-1.9.1.linux-amd64.tar.gz --overwrite --directory /home/vagrant

# To start the node exporter
# cd /home/vagrant/node_exporter-1.9.1.linux-amd64
# ./node_exporter & 



