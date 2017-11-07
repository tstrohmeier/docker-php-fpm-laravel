FROM php:7.1.11-fpm

MAINTAINER Thomas Strohmeier <docker@thomas-strohmeier.com>


RUN apt-get update && apt-get install -y libmcrypt-dev unzip \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo_mysql \
    && curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
