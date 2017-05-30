#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install -y git python-pip python-setuptools python-blist

cd /opt

sudo git clone https://github.com/eramag1/tfc_iot_ha.git

sudo pip install bravado, flask

python /opt/tfc_iot_ha/anomaly_detection.py &