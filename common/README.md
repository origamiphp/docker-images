## Common images

### Humbug Box
An image based on `php:cli-alpine` with the [humbug/box](https://github.com/humbug/box) bundler.

### PHPCPD
An image based on `php:cli-alpine` with the [PHPCPD](https://github.com/sebastianbergmann/phpcpd) tool.

### PHP-CS-Fixer
An image based on `php:cli-alpine` with the [PHP-CS-Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer) tool.

### PHPStan
An image based on `php:cli-alpine` with the [PHPStan](https://github.com/phpstan/phpstan) tool with some additional
extensions (PHPUnit, Symfony and Prophecy).

### Security
An image based on `php:cli-alpine` with the
[SensioLabs Security Checker](https://github.com/sensiolabs/security-checker).

### Synchro
An imaged based on `alpine:latest` with a new user and a new group, which share the same UID and GID than the ones
in `php` and `nginx` images, to make the files synchronization easier when using [Mutagen](https://mutagen.io/).
