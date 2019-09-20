FROM php:7.2-fpm
RUN pecl install redis-4.3.0 \
    && pecl install xdebug \
    && docker-php-ext-enable redis xdebug
