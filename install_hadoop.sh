#!/bin/bash

sudo cp hosts /etc/hosts

if [ ! -f ./hadoop-3.4.0.tar.gz ]; then
    wget https://dlcdn.apache.org/hadoop/common/hadoop-3.4.0/hadoop-3.4.0.tar.gz
fi

tar -xvzf hadoop-3.4.0.tar.gz

sudo apt-get install ansible
sudo apt install sshpass

ansible-playbook install_hadoop.yaml -vvv
ansible-playbook start_hadoop.yaml

cp workers core-site.xml hdfs-site.xml hadoop-3.4.0/etc/hadoop/

cp profile_new .profile
source .profile

sudo rm /etc/nginx/sites-enabled/nn

sudo cp nn /etc/nginx/sites-available
sudo ln -s /etc/nginx/sites-available/nn /etc/nginx/sites-enabled/nn
sudo systemctl restart nginx
sudo systemctl reload nginx