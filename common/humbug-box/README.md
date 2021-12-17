# Humbug Box image
![Image pulls](https://img.shields.io/docker/pulls/ajardin/humbug-box)

## ✨ Features
An image based on `php:8.0-cli-alpine` with the [humbug/box][1] bundler.

## 🐳 Supported tags
* [![Image size (latest)](https://img.shields.io/docker/image-size/ajardin/humbug-box/latest?label=ajardin%2Fhumbug-box%3Alatest)](/common/humbug-box/Dockerfile)

## 🚀 Usage
```bash
# Prints the tool version.
docker run --interactive --tty --volume="$(pwd):/app" ajardin/humbug-box

# Compiles the project into a PHAR archive.
docker run --interactive --tty --volume="$(pwd):/app" ajardin/humbug-box compile -vvv
```

<!-- Resources -->
[1]: https://github.com/humbug/box
