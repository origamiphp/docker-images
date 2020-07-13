Copy-Paste Detector image
=========================
![Nginx status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Copy-Paste%20Detector%20image?style=for-the-badge)
![Nginx pulls](https://img.shields.io/docker/pulls/ajardin/phpcpd?style=for-the-badge)

✨ Features
-----------
An image based on `php:cli-alpine` with the [PHPCPD][1] tool.

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpcpd

# Executes a copy/paste analysis.
docker run --interactive --tty --volume=$(pwd):/app ajardin/phpcpd --fuzzy src tests
```

<!-- Resources -->
[1]: https://github.com/sebastianbergmann/phpcpd
