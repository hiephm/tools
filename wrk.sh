#! /usr/bin/env bash

# Installing wrk
# Require: unzip, openssl-devel

curl -L -o /tmp/wrk.zip https://github.com/giltene/wrk2/archive/master.zip
unzip /tmp/wrk.zip -d /tmp
cd /tmp/wrk2-master
make -j 4
sudo cp wrk /usr/bin/
rm -rf /tmp/wrk.zip /tmp/wrk2-master
