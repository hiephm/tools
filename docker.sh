#!/usr/bin/env bash

## Install Docker CE
distro="$(cat /etc/*release | head -n 1 | awk '{print $1}')"

if [ "$distro" == "CentOS" ]; then
    sudo yum install -y yum-utils device-mapper-persistent-data lvm2
    
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    
    sudo yum install -y docker-ce docker-ce-cli containerd.io
    sudo systemctl enable docker && sudo systemctl start docker
else
    sudo apt-get update

    sudo apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common
        
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

    sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
       
    sudo apt-get update

    sudo apt-get install -y docker-ce docker-ce-cli containerd.io
fi



## Install Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/v2.33.0/docker-compose-linux-x86_64" -o /usr/bin/docker-compose

sudo chmod +x /usr/bin/docker-compose
