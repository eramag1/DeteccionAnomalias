#
# Author: Espe
#

# Setting up Fiware Repo
sudo cp /vagrant/repos/fiware.repo /etc/yum.repos.d

# Install contextBroker
sudo yum -y install contextBroker

# Change BROKER_DATABASE_HOST
sed -c -i "s/\(BROKER_DATABASE_HOST *= *\).*/\1172.28.33.10/" /etc/sysconfig/contextBroker

# Change BROKER_EXTRA_OPS
sed -c -i "s/\(BROKER_EXTRA_OPS *= *\).*/\1'-multiservice -logAppend -logLevel INFO'/" /etc/sysconfig/contextBroker

# Start contextBroker
sudo service contextBroker start

# Start automatically during boot
sudo chkconfig contextBroker on

sudo service crond stop
sudo chkconfig crond off
