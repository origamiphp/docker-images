Proximis proxy image
====================
![Proximis proxy status](https://img.shields.io/github/workflow/status/ajardin/docker-images/Proximis%20proxy%20image?style=for-the-badge)
![Proximis proxy pulls](https://img.shields.io/docker/pulls/ajardin/proximis-proxy?style=for-the-badge)

✨ Features
-----------
An image based on `php:7-cli` with [Composer][1] and the [Proximis proxy][2].

🚀 Usage
--------
```bash
# Installs the project dependencies through the Proximis proxy.
docker run \
  --interactive --tty \
  --volume="${HOME}/.proximis-key.json:/root/proxy-keyfile.json" \
  --volume="$(pwd):/app" \
  ajardin/proximis-proxy:latest \
  install
  
# Installs the project dependencies through the Proximis proxy with a shared SSH agent.
docker run \
  --interactive --tty \
  --env="SSH_AUTH_SOCK=/run/host-services/ssh-auth.sock" \
  --volume="/run/host-services/ssh-auth.sock:/run/host-services/ssh-auth.sock" \
  --volume="${HOME}/.proximis-key.json:/root/proxy-keyfile.json" \
  --volume="$(pwd):/app" \
  ajardin/proximis-proxy:latest \
  install
```

<!-- Resources -->
[1]: https://getcomposer.org/
[2]: http://doc.omn.proximis.com/en/omn/4.19/developer/environment.html#project-setup
