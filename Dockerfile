# Specify tag and the version of the base image
FROM php:7.2-apache

# If you want to install any additional dependencies
RUN apt update &&\
    apt install -y git zlib1g-dev &&\
    docker-php-ext-install pdo pdo_mysql zip &&\
    a2enmod rewrite &&\
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# Install Node using nvm
ENV NVM_DIR "/root/.nvm"
ENV NODE_VERSION 13.14.0
ENV PATH $NVM_DIR/versions/node/v$NODE_VERSION/bin:$PATH
RUN curl -q https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash &&\
    . "$NVM_DIR/nvm.sh" &&\
    . "$NVM_DIR/bash_completion"

# Copy necessary files
WORKDIR /app
COPY ./server.conf /etc/apache2/sites-available/000-default.conf
COPY ./ ./

#RUN composer install
RUN ln -s /app/public/ /var/www/html/

# Permissions
RUN chown -R www-data /app/storage

RUN composer install
