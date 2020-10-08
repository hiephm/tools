#!/bin/bash
echo "============ CPU ============"
lscpu | grep 'Model name'

echo "============ RAM ============"
sudo dmidecode --type 17 | grep Size

echo "============ DISK ============"
lsblk | grep disk
