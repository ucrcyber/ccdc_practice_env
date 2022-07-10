FROM fedora/ssh

##Update System
#RUN yum check-update

## Change Root Password
RUN echo "root:root" | chpasswd

## Enable Root SSH Login
RUN echo "PermitRootLogin yes" >> /etc/ssh/sshd_config