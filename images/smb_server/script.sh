#!/bin/bash

echo "root:root" | chpasswd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

service ssh start
service smbd start

for (( ; ; ))
do
   sleep 1
done