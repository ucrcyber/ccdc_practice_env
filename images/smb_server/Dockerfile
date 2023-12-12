FROM ubuntu:24.04

ENV DEBIAN_FRONTEND=noninteractive
ENV PASS=root

RUN apt update && apt upgrade -y
RUN apt install vim net-tools curl sudo man netcat-openbsd -y
RUN apt install samba openssh-server smbclient -y

RUN echo "root:root" | chpasswd

# Backup SMB config
RUN cp /etc/samba/smb.conf /etc/samba/smb.conf.orig
COPY smb.conf /etc/samba/smb.conf

# Setup Samba Directory
RUN mkdir /samba/
RUN chown :sambashare /samba/

# Setup Fileshare Location
RUN mkdir /samba/share
RUN adduser --home /samba/share --no-create-home --shell /usr/sbin/nologin --ingroup sambashare sambauser
RUN chown sambauser:sambashare /samba/share/
RUN chmod 2770 /samba/share/

# Add/Enable User to Samba Serice
RUN (echo "samba"; echo "samba") | smbpasswd -a sambauser -s
# RUN smbpasswd -a sambauser
RUN smbpasswd -e sambauser

# Create files in fileshare
RUN echo "Hello World" > /samba/share/hello.txt
RUN echo "natem135 was here" > /samba/share/natem135.txt
RUN chown sambauser:sambashare /samba/share/*.txt

COPY script.sh /run.sh
RUN chmod +x /run.sh

ENTRYPOINT ["/run.sh"]