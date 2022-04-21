FROM ubuntu:18.04

##Update System
RUN apt update && apt upgrade -y

## Change Root Password
RUN echo "root:root" | chpasswd

# Install Utilities

##Install Text Editor
RUN apt install vim -y
##Install Netstat
RUN apt install net-tools -y
##Install Curl
RUN apt install curl -y
## Install Sudo
RUN apt install sudo -y
## Install Man
RUN apt install man -y

# Install Services 

##Install and Start Nginx
RUN apt install nginx -y
RUN service nginx start

##Install MySQL Server and Client. Populate Tables n Shit
RUN apt install mysql-client -y
RUN apt install mysql-server -y
RUN service mysql start

# RUN mysql -uroot -e 'CREATE DATABASE ucr; USE ucr; CREATE TABLE ucr_msg_board(uid int NOT NULL AUTO_INCREMENT, message varchar(100) NOT NULL, PRIMARY KEY (uid));'
# RUN mysql -uroot -e "USE ucr; INSERT INTO ucr_msg_board (message) VALUES('flag{you_win_a_sticker_if_not_adil}');"
# RUN mysql -uroot -e "USE ucr; INSERT INTO ucr_msg_board (message) VALUES('guys i kinda want to kill myself');"
# RUN mysql -uroot -e "USE ucr; INSERT INTOPermitRootLogin yes ucr_msg_board (message) VALUES('roses are red violets are blue i cannot think of anythin');"
# RUN mysql -uroot -e "USE ucr; INSERT INTO ucr_msg_board (message) VALUES('hehehheahhhh');"

## Install SSH Server
RUN apt install openssh-server -y
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
RUN service ssh start

COPY script.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]