FROM php:7.2-fpm
RUN docker-php-ext-install -j$(nproc) pdo_mysql \
    && pecl install redis-3.1.6 \
    && pecl install xdebug \
    && docker-php-ext-enable redis xdebug \
    && docker-php-source delete \
    && mkdir -p /data/logs
COPY etc /usr/local/etc
