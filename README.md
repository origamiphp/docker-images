<h1 align="center">Welcome to my Docker images! 👋</h1>

🔍 Summary
----------
* [Common images][1]
* [Drupal images][2]
* [Magento 2 images][3]
* [Sylius images][4]
* [Symfony images][5]

⚙ Build
--------
These images are automatically built when a commit is added to the `master` branch using
[GitHub Actions][6] and are publicly available in [Docker Hub][7]. We are currently not able to display the link
between the public image and the associated Dockerfile in Docker Hub because **multiple images are present in a single
GitHub repository**. 

**Note:** All PHP images are built in the same GitHub Actions workflow. This structure makes dependencies between
images easier to manage.

📝 License
----------
Copyright © [Alexandre Jardin][8]. This project is licensed under the [MIT][9] license.

<!-- Resources -->
[1]: /common
[2]: /drupal/php
[3]: /magento2
[4]: /sylius/php
[5]: /symfony/php
[6]: /.github/workflows
[7]: https://hub.docker.com/u/ajardin
[8]: https://github.com/ajardin
[9]: https://github.com/ajardin/origami-source/blob/master/LICENSE
