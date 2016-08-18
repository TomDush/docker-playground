#!/bin/bash

# Setup and start docker repo
cp -r /vagrant/docker-repo/ /opt/
cd /opt/docker-repo
docker-compose up -d