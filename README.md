<h1 align="center">Welcome to my Docker images! 👋</h1>

🔍 Summary
----------
* [Common images](/common)
* [Magento 2 images](/magento2)
* [OroCommerce images](/orocommerce)
* [PHP images](/php)

⚙ Build
--------
These images are automatically built when a commit is added to the `master` branch using
[GitHub Actions](/.github/workflows) and are publicly available in [Docker Hub][dockerhub]. We are currently not able
to display the link between the public image, and the associated Dockerfile in Docker Hub because **multiple images are
present in a single GitHub repository**. 

**Note:** All PHP images are built in the same GitHub Actions workflow. This structure makes dependencies between
images easier to manage.

📝 License
----------
Copyright © [Alexandre Jardin][github]. This project is licensed under the [MIT][license] license.

<!-- Resources -->
[dockerhub]: https://hub.docker.com/u/ajardin
[github]: https://github.com/ajardin
[license]: https://github.com/ajardin/origami-source/blob/master/LICENSE
