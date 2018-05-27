FROM debian:stable

RUN apt-get update && apt-get upgrade -y && apt-get install -y apache2

RUN mkdir -p /var/www/html/health
RUN echo "OK" >> /var/www/html/health/index.html

RUN mkdir /var/www/html/

ADD src/* /var/www/html/

EXPOSE 80

#CMD ["/usr/sbin/apache2ctl","-D","FOREGROUND"]
