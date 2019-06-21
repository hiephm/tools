#!/usr/bin/env bash
## Install Docker CE
distro="$(cat /etc/*release | head -n 1 | awk '{print $1}')"

if [ "$distro" == "CentOS" ]; then
    yum install -y yum-utils device-mapper-persistent-data lvm2
    
    sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    
    yum install -y docker-ce docker-ce-cli containerd.io
else
    apt-get update

    apt-get install -y \
        apt-transport-https \
        ca-certificates \
        curl \
        gnupg-agent \
        software-properties-common
        
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

    add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
       
    apt-get update

    apt-get install -y docker-ce docker-ce-cli containerd.io
fi



## Install Docker Compose
curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose
