FROM php:7.2.9-fpm

LABEL maintainer = "Eric Keyte <ekeyte@gmail.com>"

RUN pecl install xdebug-2.6.0
RUN docker-php-ext-enable xdebug
    
VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/app/vendor/bin/phpunit"]
CMD ["--help"]