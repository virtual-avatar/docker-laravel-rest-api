FROM phpdockerio/php72-fpm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update

RUN apt-get install -y php7.2 php7.2-cli php7.2-common php7.2-json \
    php7.2-opcache php7.2-mysql php7.2-mbstring \
    php7.2-zip php7.2-xml

ADD . /var/www
RUN chown -R www-data:www-data /var/www
