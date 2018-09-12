# PhpUnit for Docker

## Prerequisites

1. Add phpunit as a dependency to your project 
2. Composer install

As long as your phpunit installation is in the `vendor/bin/phpunit` of your project root, this container should work.

## Usage

### Run tests

```
$ docker container exec --rm -it $(pwd):/app erickeyte/phpunit --configuration=/path/to/phpunit.xml
```