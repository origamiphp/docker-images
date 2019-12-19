## Symfony images

### Nginx
An image based on `nginx:alpine` with HTTPS support.

### PHP
An image based on `php:7.4-fpm-alpine` with Symfony prequisites, Composer, and several improvements when using the
container with a console. This is the `default` tag, but there are two others tags:
* the `blackfire` tag is an image based on `default` with the [Blackfire extension](https://blackfire.io/docs/introduction), 
* the `xdebug` tag is an image based on `default` with the [Xdebug extension](https://xdebug.org/).
