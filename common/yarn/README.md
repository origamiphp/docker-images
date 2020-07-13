Yarn image
==========
![Yarn status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Yarn%20image?style=for-the-badge)
![Yarn pulls](https://img.shields.io/docker/pulls/ajardin/yarn?style=for-the-badge)

✨ Features
-----------
An image based on `alpine:latest` with [Yarn][1] the dependency manager for JavaScript.

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume=$(pwd):/app ajardin/yarn:latest

# Upgrades JavaScript packages.
docker run --interactive --tty --volume=$(pwd):/app ajardin/yarn:latest upgrade
```

<!-- Resources -->
[1]: https://yarnpkg.com/
