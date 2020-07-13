PHPStan image
=============
![PHPStan status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHPStan%20image?style=for-the-badge)
![PHPStan pulls](https://img.shields.io/docker/pulls/ajardin/phpstan?style=for-the-badge)

✨ Features
-----------
An image based on `php:7.4-cli-alpine` with the [PHPStan][1] tool with some additional extensions (PHPUnit, Symfony and Prophecy).

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpstan

# Executes a static analysis on all PHP files.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpstan analyze src tests --verbose
```

```yaml
# Example of PHPStan configuration (phpstan.neon) to place at the project root.

includes:
  - /root/.composer/vendor/phpstan/phpstan-phpunit/extension.neon
  - /root/.composer/vendor/phpstan/phpstan-symfony/extension.neon
  - /root/.composer/vendor/jangregor/phpstan-prophecy/extension.neon

parameters:
  level: max
  paths:
    - '%currentWorkingDirectory%/src'
    - '%currentWorkingDirectory%/tests'
  symfony:
    container_xml_path: '%currentWorkingDirectory%/var/cache/dev/App_KernelDevDebugContainer.xml'
```

<!-- Resources -->
[1]: https://github.com/phpstan/phpstan
