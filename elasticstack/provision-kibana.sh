# Install kibana 4.4
#wget -qO - https://packages.elastic.co/GPG-KEY-elasticsearch | apt-key add -

# Add the kibana repo to the list
#echo "deb http://packages.elastic.co/kibana/4.4/debian stable main" | tee -a /etc/apt/sources.list

# Install kibana 5.3
wget -qO - https://artifacts.elastic.co/GPG-KEY-elasticsearch | sudo apt-key add -

# Add the kibana repo to the list
sudo apt-get install apt-transport-https
echo "deb https://artifacts.elastic.co/packages/5.x/apt stable main" | sudo tee -a /etc/apt/sources.list.d/elastic-5.x.list

# Update and install the cabin
sudo apt-get update && sudo apt-get install kibana

# Add the kibana to startup service
sudo update-rc.d kibana defaults 95 10

# Start the kibana service by running below command
sudo service kibana start

sudo echo "server.host: 0.0.0.0" >> /etc/kibana/kibana.yml

sudo service kibana restart



