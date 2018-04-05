FROM debian:stable

RUN apt-get update && apt-get upgrade -y && apt-get install -y apache2

RUN mkdir -p /var/www/html/health
RUN echo "OK" >> /var/www/html/health/index.html

RUN mkdir /var/www/html/apache

ADD src/* /var/www/html/apache/

EXPOSE 80

#CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
