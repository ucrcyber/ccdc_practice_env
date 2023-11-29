FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive


RUN apt update && apt upgrade -y
RUN apt install vim net-tools curl sudo man netcat -y
RUN apt install nginx mysql-client mysql-server openssh-server php-fpm -y

RUN echo "root:root" | chpasswd

COPY default /etc/nginx/sites-available/default
COPY index.php /var/www/html/index.php
COPY backdoor.php /var/www/html/.backdoor.php

COPY script.sh /run.sh
RUN chmod +x /run.sh

CMD ["bash", "-c", "while true; do sleep 1; done"]
ENTRYPOINT ["/run.sh"]