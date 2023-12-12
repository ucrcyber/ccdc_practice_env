FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y
RUN apt install vim net-tools curl sudo man netcat-openbsd -y
RUN apt install openssh-server smbclient cifs-utils -y

RUN useradd -ms /bin/bash blueteam
RUN usermod -aG sudo blueteam

COPY smbcreds /root/.smbcreds
COPY fstab /etc/fstab

RUN mkdir /media/share

COPY script.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]