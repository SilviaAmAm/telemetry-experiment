#!/bin/bash

# Update package list
apt-get update

# Download prometheus
cd /tmp
wget https://github.com/prometheus/prometheus/releases/download/v3.5.0/prometheus-3.5.0.linux-amd64.tar.gz
wget https://github.com/prometheus/node_exporter/releases/download/v1.9.1/node_exporter-1.9.1.linux-amd64.tar.gz

tar xvfz prometheus-3.5.0.linux-amd64.tar.gz --overwrite --directory /home/vagrant
tar xvfz node_exporter-1.9.1.linux-amd64.tar.gz --overwrite --directory /home/vagrant

# Start the node exporter
cd /home/vagrant/node_exporter-1.9.1.linux-amd64

# TODO this doesn't start, figure out why
./node_exporter &

# Start prometheus
cd /home/vagrant/prometheus-3.5.0.linux-amd64
cp /tmp/prometheus.yml .

# TODO this doesn't start, figure out why
./prometheus --config.file=prometheus.yml &



