#! /usr/bin/env bash

# Installing fzf

curl -L -o ~/fzf.zip https://github.com/junegunn/fzf/archive/master.zip
unzip ~/fzf.zip
mv ~/fzf-master ~/.fzf
~/.fzf/install --all
