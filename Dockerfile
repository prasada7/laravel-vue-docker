# Specify tag and the version of the base image
FROM php:7.2-apache

# If you want to install any additional dependencies
RUN apt update &&\
    apt install -y git zlib1g-dev &&\
    docker-php-ext-install pdo pdo_mysql zip &&\
    a2enmod rewrite &&\
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /app

# Copy necessary files
COPY ./server.conf /etc/apache2/sites-available/000-default.conf
COPY ./ ./

#RUN composer install
RUN ln -s /app/public/ /var/www/html/

# Permissios
RUN chown -R www-data /app/storage

RUN composer install
