Humbug Box image
================
![Humbug Box status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Humbug%20Box%20image?style=for-the-badge)
![Humbug Box pulls](https://img.shields.io/docker/pulls/ajardin/humbug-box?style=for-the-badge)

✨ Features
-----------
An image based on `php:cli-alpine` with the [humbug/box][1] bundler.

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
