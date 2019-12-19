# My Docker Images [![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

This repository contains all my custom Docker images.

Images related to a technology (i.e. Magento 2 or Symfony) are designed to be used with the associated Docker Compose
environment, thus on local environments and **not on production platforms**.

## Index
* [Common images](/common)
* [Magento 2 images](/magento2)
* [Symfony images](/symfony)

## Build
These images are automatically built when a commit is added to the `master` branch using
[GitHub Actions](/.github/workflows) and are publicly available in [Docker Hub](https://hub.docker.com/u/ajardin). We
are currently not able to display the association between the final image and the Dockerfile directly in Docker Hub
because **multiple images are present in a single GitHub repository**. 
