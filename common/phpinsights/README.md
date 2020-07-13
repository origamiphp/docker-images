PHPInsights image
=================
![PHPInsights status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PHPInsights%20image?style=for-the-badge)
![PHPInsights pulls](https://img.shields.io/docker/pulls/ajardin/phpinsights?style=for-the-badge)

✨ Features
-----------
An image based on `php:7.4-cli-alpine` with the [PHPInsights][1] tool.

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpinsights

# Executes a static analysis on all PHP files.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpinsights analyse src
```

<!-- Resources -->
[1]: https://github.com/phpmetrics/PhpMetrics
