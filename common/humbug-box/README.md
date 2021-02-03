Humbug Box image
================
![Humbug Box pulls](https://img.shields.io/docker/pulls/ajardin/humbug-box?style=for-the-badge)

✨ Features
-----------
An image based on `php:7.4-cli-alpine` with the [humbug/box][1] bundler.

🚀 Usage
--------
```bash
# Prints the tool version.
docker run --interactive --tty --volume="$(pwd):/app" ajardin/humbug-box

# Compiles the project into a PHAR archive.
docker run --interactive --tty --volume="$(pwd):/app" ajardin/humbug-box compile -vvv
```

<!-- Resources -->
[1]: https://github.com/humbug/box
