FROM ubuntu 
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt -y install apache2 curl nano
ADD . /var/www/html
ENTRYPOINT apachectl -D FOREGROUND

