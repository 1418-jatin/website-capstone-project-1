FROM ubuntu:20.04
RUN apt update && \
    apt install apache2 -y
ADD . /var/www/html/
EXPOSE 80
ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
