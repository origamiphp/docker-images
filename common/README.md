Common images
=============

Blackfire entrypoint
--------------------
An image based on `scratch` with a custom entrypoint to be use with custom PHP images (i.e. [Magento 2][1], [Sylius][2], [Symfony][3]).

Nginx
-----
An image based on `nginx:alpine` with HTTPS support and custom domains.

Humbug Box
----------
An image based on `php:cli-alpine` with the [humbug/box][4] bundler.

PHPCPD
------
An image based on `php:cli-alpine` with the [PHPCPD][5] tool.

PHP-CS-Fixer
------------
An image based on `php:cli-alpine` with the [PHP-CS-Fixer][6] tool.

PHPStan
-------
An image based on `php:cli-alpine` with the [PHPStan][7] tool with some additional extensions (PHPUnit, Symfony and Prophecy).

Psalm
-------
An image based on `php:cli-alpine` with the [Psalm][8] tool with some additional extensions (PHPUni and Symfony).

Security
--------
An image based on `php:cli-alpine` with the [SensioLabs Security Checker][9].

Synchro
-------
An imaged based on `alpine:latest` with a new user and a new group, which share the same UID and GID than the ones
in `php` and `nginx` images, to make the files synchronization easier when using [Mutagen][10].

Yarn
----
An image based on `alpine:latest` with [Yarn][11] the dependency manager for JavaScript.

<!-- Resources -->
[1]: /magento2
[2]: /sylius
[3]: /symfony
[4]: https://github.com/humbug/box
[5]: https://github.com/sebastianbergmann/phpcpd
[6]: https://github.com/FriendsOfPHP/PHP-CS-Fixer
[7]: https://github.com/phpstan/phpstan
[8]: https://github.com/vimeo/psalm
[9]: https://github.com/sensiolabs/security-checker
[10]: https://mutagen.io/
[11]: https://yarnpkg.com/
