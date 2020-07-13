PHP Coding Standards Fixer image
================================
![PHP Coding Standards Fixer status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHP%20Coding%20Standards%20Fixer%20image?style=for-the-badge)
![PHP Coding Standards Fixer pulls](https://img.shields.io/docker/pulls/ajardin/phpcsfixer?style=for-the-badge)

✨ Features
-----------
An image based on `php:cli-alpine` with the [PHP-CS-Fixer][1] tool.

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpcsfixer

# Executes a code style analysis with dry-run mode.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpcsfixer fix --dry-run --verbose
```

<!-- Resources -->
[1]: https://github.com/FriendsOfPHP/PHP-CS-Fixer
