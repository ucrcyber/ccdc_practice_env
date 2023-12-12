FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y
RUN apt install vim net-tools curl sudo man netcat-openbsd -y
RUN apt install openssh-server smbclient -y

RUN useradd -ms /bin/bash blueteam
RUN usermod -aG sudo blueteam

COPY script.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]