Common images
=============
![Common - Build and Publish](https://github.com/ajardin/docker-images/workflows/Common%20-%20Build%20and%20Publish/badge.svg)

Blackfire entrypoint
--------------------
An image based on `scratch` with a custom entrypoint to be use with PHP images for [Magento][1] and [Symfony][2].

Nginx
-----
An image based on `nginx:alpine` with HTTPS support and custom domains.

Humbug Box
----------
An image based on `php:cli-alpine` with the [humbug/box][3] bundler.

PHPCPD
------
An image based on `php:cli-alpine` with the [PHPCPD][4] tool.

PHP-CS-Fixer
------------
An image based on `php:cli-alpine` with the [PHP-CS-Fixer][5] tool.

PHPStan
-------
An image based on `php:cli-alpine` with the [PHPStan][6] tool with some additional extensions (PHPUnit, Symfony and Prophecy).

Security
--------
An image based on `php:cli-alpine` with the [SensioLabs Security Checker][7].

Synchro
-------
An imaged based on `alpine:latest` with a new user and a new group, which share the same UID and GID than the ones
in `php` and `nginx` images, to make the files synchronization easier when using [Mutagen][8].

Yarn
----
An image based on `alpine:latest` with [Yarn][9] the dependency manager for JavaScript.

<!-- Resources -->
[1]: /magento2
[2]: /symfony
[3]: https://github.com/humbug/box
[4]: https://github.com/sebastianbergmann/phpcpd
[5]: https://github.com/FriendsOfPHP/PHP-CS-Fixer
[6]: https://github.com/phpstan/phpstan
[7]: https://github.com/sensiolabs/security-checker
[8]: https://mutagen.io/
[9]: https://github.com/sensiolabs/security-checker
