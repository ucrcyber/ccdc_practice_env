#!/bin/bash


echo "root:root" | chpasswd

service mysql start
service nginx start
service ssh start

mysql -uroot -e 'CREATE DATABASE ucr; USE ucr; CREATE TABLE ucr_msg_board(uid int NOT NULL AUTO_INCREMENT, message varchar(100) NOT NULL, PRIMARY KEY (uid));'
mysql -uroot -e "USE ucr; INSERT INTO ucr_msg_board (message) VALUES('flag{you_win_a_sticker_if_not_adil}');"
mysql -uroot -e "USE ucr; INSERT INTO ucr_msg_board (message) VALUES('SCOTTY WAS HERE????!?!');"
mysql -uroot -e "USE ucr; INSERT INTO ucr_msg_board (message) VALUES('roses are red violets are blue i cannot think of anythin');"
mysql -uroot -e "USE ucr; INSERT INTO ucr_msg_board (message) VALUES('hehehheahhhh');"


for (( ; ; ))
do
   sleep 1
done