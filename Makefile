##
## ----------------------------------------------------------------------------
##   DOCKER IMAGES
## ----------------------------------------------------------------------------
##

# Latest version of the Blackfire PHP probe
BLACKFIRE_PROBE_VERSION=1.49.1

all: common drupal magento2 sylius symfony ## Builds all Docker images
.PHONY: all

common: ## Builds all "common" images
	docker build --tag=ajardin/blackfire-entrypoint:latest common/blackfire-entrypoint
	docker build --tag=ajardin/humbug-box:latest common/humbug-box
	docker build --tag=ajardin/nginx:latest common/nginx
	docker build --tag=ajardin/proximis-proxy:latest common/proximis-proxy
.PHONY: common

drupal: ## Builds all "drupal" images
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/drupal-php:7.4 drupal/php/7.4
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/drupal-php:7.4-blackfire drupal/php/7.4/blackfire
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/drupal-php:7.4-xdebug drupal/php/7.4/xdebug
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/drupal-php:8.0 drupal/php/8.0
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/drupal-php:8.0-blackfire drupal/php/8.0/blackfire
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/drupal-php:8.0-xdebug drupal/php/8.0/xdebug
.PHONY: drupal

magento2: ## Builds all "magento2" images
	docker build --tag=ajardin/magento2-elasticsearch:6.8 magento2/elasticsearch/6.8
	docker build --tag=ajardin/magento2-elasticsearch:7.6 --tag=ajardin/magento2-elasticsearch:latest magento2/elasticsearch/7.6
	docker build --tag=ajardin/magento2-mysql:5.7 magento2/mysql/5.7
	docker build --tag=ajardin/magento2-mysql:8.0 --tag=ajardin/magento2-mysql:latest magento2/mysql/8.0
	docker build --tag=ajardin/magento2-nginx:latest magento2/nginx
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/magento2-php:7.4 magento2/php/7.4
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/magento2-php:7.4-blackfire magento2/php/7.4/blackfire
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/magento2-php:7.4-xdebug magento2/php/7.4/xdebug
.PHONY: magento2

orocommerce: ## Builds all "orocommerce" images
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/orocommerce-php:7.4 orocommerce/php/7.4
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/orocommerce-php:7.4-blackfire orocommerce/php/7.4/blackfire
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/orocommerce-php:7.4-xdebug orocommerce/php/7.4/xdebug
	docker build --tag=ajardin/orocommerce-rabbitmq:3.8 orocommerce/rabbitmq/3.8
.PHONY: orocommerce

sylius: ## Builds all "sylius" images
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/sylius-php:7.4 sylius/php/7.4
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/sylius-php:7.4-blackfire sylius/php/7.4/blackfire
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/sylius-php:7.4-xdebug sylius/php/7.4/xdebug
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/sylius-php:8.0 sylius/php/8.0
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/sylius-php:8.0-blackfire sylius/php/8.0/blackfire
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/sylius-php:8.0-xdebug sylius/php/8.0/xdebug
.PHONY: sylius

symfony: ## Builds all "symfony" images
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/symfony-php:7.4 symfony/php/7.4
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/symfony-php:7.4-blackfire symfony/php/7.4/blackfire
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/symfony-php:7.4-xdebug symfony/php/7.4/xdebug
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/symfony-php:8.0 symfony/php/8.0
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/symfony-php:8.0-blackfire symfony/php/8.0/blackfire
	docker build --build-arg="BLACKFIRE_PROBE_VERSION=${BLACKFIRE_PROBE_VERSION}" --tag=ajardin/symfony-php:8.0-xdebug symfony/php/8.0/xdebug
.PHONY: symfony

help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' \
		| sed -e 's/\[32m##/[33m/'
.DEFAULT_GOAL := help
