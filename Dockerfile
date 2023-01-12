FROM php:8.1-cli-alpine

MAINTAINER indapublic <mail@indapublic.com>

ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

RUN chmod +x /usr/local/bin/install-php-extensions && \
    install-php-extensions amqp intl mysqli opcache pdo pdo_mysql phar redis xsl zip
