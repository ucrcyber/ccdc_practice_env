#!/bin/bash

echo "root:root" | chpasswd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

service ssh start
service smbd start

chsh root -s /bin/bash

for (( ; ; ))
do
   sleep 1
done