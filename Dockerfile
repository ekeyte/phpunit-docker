
FROM php:7.2.9-fpm

LABEL maintainer = "dave and eric awesome contaienr great job! <ekeyte@rategenius.com>"

RUN pecl install xdebug
    
VOLUME ["/app"]
WORKDIR /app

ENTRYPOINT ["/app/vendor/bin/phpunit"]
CMD ["--help"]