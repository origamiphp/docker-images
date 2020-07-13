Psalm image
===========
![Psalm status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Psalm%20image?style=for-the-badge)
![Psalm pulls](https://img.shields.io/docker/pulls/ajardin/psalm?style=for-the-badge)

✨ Features
-----------
An image based on `php:7.4-cli-alpine` with the [Psalm][1] tool with some additional extensions (PHPUnit and Symfony).

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume=$(pwd):/app ajardin/psalm

# Executes a static analysis on all PHP files.
docker run --interactive --tty --volume=$(pwd):/app ajardin/psalm --show-info=true --find-dead-code
```

<!-- Resources -->
[1]: https://github.com/vimeo/psalm
