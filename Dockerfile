FROM httpd:2.4
COPY src/ /usr/local/apache2/htdocs/

RUN mkdir -p /usr/local/apache2/htdocs/health
RUN echo "OK" >> /usr/local/apache2/htdocs/health/index.html
