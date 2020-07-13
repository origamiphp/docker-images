PhpMetrics image
================
![PhpMetrics status](https://img.shields.io/github/workflow/status/ajardin/docker-images/PhpMetrics%20image?style=for-the-badge)
![PHP Coding Standards Fixer pulls](https://img.shields.io/docker/pulls/ajardin/phpmetrics?style=for-the-badge)

✨ Features
-----------
An image based on `php:7.4-cli-alpine` with the [PhpMetrics][1] tool.

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpmetrics

# Executes a static analysis on all PHP files.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpmetrics src,tests --report-html="./report" 
```

<!-- Resources -->
[1]: https://github.com/phpmetrics/PhpMetrics
