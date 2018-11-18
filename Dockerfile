FROM ubuntu:14.04
RUN apt-get update && apt-get install -y apache2 wget vim curl
EXPOSE 80
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/apache2ctl","-DFOREGROUND"]
