Security Checker image
======================
![Security Checker status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Security%20Checker%20image?style=for-the-badge)
![Security Checker pulls](https://img.shields.io/docker/pulls/ajardin/security-checker?style=for-the-badge)

✨ Features
-----------
An image based on `php:7.4-cli-alpine` with the [SensioLabs Security Checker][1].

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume=$(pwd):/app ajardin/security-checker

# Executes a security audit on all PHP dependencies.
docker run --interactive --tty --volume=$(pwd):/app ajardin/security-checker security:check ./composer.lock
```

<!-- Resources -->
[1]: https://github.com/sensiolabs/security-checker
