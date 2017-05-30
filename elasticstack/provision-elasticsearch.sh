#!/usr/bin/env bash

sudo apt-get update
sudo apt-get upgrade

# Install openjdk-7 
#sudo apt-get purge openjdk*
#sudo apt-get -y install openjdk-7-jre

sudo add-apt-repository ppa:openjdk-r/ppa -y
sudo apt-get update
sudo apt-get install -y openjdk-8-jdk

# Install ES 2.X
#wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
#echo "deb http://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list
#sudo apt-get update && sudo apt-get install elasticsearch
#sudo update-rc.d elasticsearch defaults 95 10
#sudo /etc/init.d/elasticsearch start


# Install ES v5.3X

wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list
sudo apt-get update && sudo apt-get install elasticsearch

sudo update-rc.d elasticsearch defaults 95 10
sudo /etc/init.d/elasticsearch start

# either of the next two lines is needed to be able to access "localhost:9200" from the host os
sudo echo "network.bind_host: 0" >> /etc/elasticsearch/elasticsearch.yml
sudo echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml

sudo /etc/init.d/elasticsearch restart