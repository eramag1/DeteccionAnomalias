#
# Author: Espe
#

# Setting up Elastic Filebeat Repo
sudo cp /vagrant/repos/elasticbeat.repo /etc/yum.repos.d

# Install Elastic Filebeat agent
sudo yum -y install filebeat

# Start automatically during boot
sudo chkconfig filebeat on

# Change Filebeat config
sudo cp /vagrant/conf/filebeat.yml /etc/filebeat/

# Restart Filebeat
sudo service filebeat restart
