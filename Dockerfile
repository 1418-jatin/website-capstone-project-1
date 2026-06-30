FROM ubuntu:20.04
RUN apt update
RUN apt install apache2 -y
RUN ln -fs /usr/share/zoneinfo/Asia/Kolkata /etc/localtime && \
    dpkg-reconfigure -f noninteractive tzdata
ADD . /var/www/html/
ENTRYPOINT apachectl -D FOREGROUND
