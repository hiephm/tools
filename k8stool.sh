#!/usr/bin/env bash

### Alias and kube completion
echo 'alias k="kubectl"' >> ~/.bashrc
echo 'source <(kubectl completion bash | sed '\''s/kubectl/k/g'\'')' >> ~/.bashrc

### Install kube-ps1
curl -o ~/kube-ps1.sh https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh

echo source ~/kube-ps1.sh >> ~/.bashrc
echo KUBE_PS1_SYMBOL_ENABLE=false >> ~/.bashrc
echo PS1=\''[\u@\h \W $(kube_ps1)]\$ '\' >> ~/.bashrc

### Install kubectx
mkdir ~/kubectx
curl -o ~/kubectx/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/master/kubectx
curl -o ~/kubectx/kubens https://raw.githubusercontent.com/ahmetb/kubectx/master/kubens
chmod +x ~/kubectx/*
echo 'export PATH=$PATH:~/kubectx' >> ~/.bashrc
