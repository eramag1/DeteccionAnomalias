#Install Logstash 5.3
sudo apt-get update && sudo apt-get install logstash

sudo cp /vagrant/conf/logstash.conf /etc/logstash/conf.d/logstash.conf

sudo service logstash start

#sudo update-rc.d logstash defaults 95 10




