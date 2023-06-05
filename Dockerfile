FROM php:7.4.4-apache
RUN apt-get update --allow-releaseinfo-change && apt-get install -y libzip-dev zip && docker-php-ext-install zip
RUN service apache2 restart
RUN docker-php-ext-install mysqli
COPY ./src /var/www/html