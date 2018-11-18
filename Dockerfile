FROM ubuntu:14.04
RUN apt-get update && get-apt install -y  apache2 vim curl wget
EXPOSE 80
COPY index.html /var/www/html/
ENTRYPOINT ["/usr/sbin/apache2ctl","-DEFOREGROUND"]
