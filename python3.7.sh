#!/usr/bin/env bash

wget https://www.python.org/ftp/python/3.7.3/Python-3.7.3.tgz

tar xzf Python-3.7.3.tgz

cd Python-3.7.3

sudo apt install -y build-essential checkinstall

sudo apt install -y libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev

./configure

sudo make altinstall -j 4
