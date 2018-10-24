# PhpUnit for Docker

Github Repository: (https://github.com/ekeyte/phpunit-docker)

## Prerequisites

1. Add phpunit as a dependency to your project 
2. Composer install

As long as your phpunit installation is in the `vendor/bin/phpunit` of your project root, this container should work.

## Usage

### Run tests

```
$ docker container exec --rm -it $(pwd):/app erickeyte/phpunit --configuration=/path/to/phpunit.xml
```

### XDebugging in PhpStorm

xDebug is usable through PHP storm by doing the following:

* PhpStorm -> Settings -> Languages & Frameworks -> Php -> Debug -> Uncheck "Pass required configuration options..."
* PhpStorm -> Settings -> Languages & Frameworks -> Php -> CLI Interpreter -> erickeyte/phpunit:7.2.9 (or latest) -> ellipses button
* Additional -> Debugger extension = "xdebug.so"
* Additional -> Configuration Options

```
xdebug.remote_enable=1
xdebug.remote_host=docker.for.mac.localhost
xdebug.remote_port=9000
xdebug.remote_mode=jit
```