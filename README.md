<h1 align="center">Welcome to my Docker images 👋</h1>

Summary
-------
* [Common images][1]
* [Magento 2 images][2]
* [Sylius images][3]
* [Symfony images][4]

Build
-----
These images are automatically built when a commit is added to the `master` branch using
[GitHub Actions][5] and are publicly available in [Docker Hub][6]. We are currently not able to display the association
between the final image and the Dockerfile directly in Docker Hub because **multiple images are present in a single
GitHub repository**. 

**Note:** All PHP images (i.e. Magento 2, Sylius and Symfony) are built in the same GitHub Actions workflow. This
structure makes dependencies between images easier to manage.

<!-- Resources -->
[1]: /common
[2]: /magento2
[3]: /sylius
[4]: /symfony
[5]: /.github/workflows
[6]: https://hub.docker.com/u/ajardin
