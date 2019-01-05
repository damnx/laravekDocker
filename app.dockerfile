FROM php:7.1.13-fpm

# RUN apk update && apk add libmcrypt-dev mysql-client zlib-dev libpng-dev \
#     && docker-php-ext-install pdo_mysql bcmath gd

RUN apt-get update && apt-get install -y libmcrypt-dev \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo_mysql

    
