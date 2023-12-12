#!/bin/bash

echo "blueteam:password" | chpasswd

service ssh start

chsh root -s /bin/bash

mount -a

for (( ; ; ))
do
   sleep 1
done