##
## ----------------------------------------------------------------------------
##   DOCKER IMAGES
## ----------------------------------------------------------------------------
##

all: common magento2 sylius symfony ## Builds all Docker images
.PHONY: all

common: ## Builds all "common" images
	docker build --tag=ajardin/blackfire-entrypoint:latest common/blackfire-entrypoint
	docker build --tag=ajardin/humbug-box:latest common/humbug-box
	docker build --tag=ajardin/nginx:latest common/nginx
	docker build --tag=ajardin/phpcpd:latest common/phpcpd
	docker build --tag=ajardin/phpcsfixer:latest common/phpcsfixer
	docker build --tag=ajardin/phpinsights:latest common/phpinsights
	docker build --tag=ajardin/phpmetrics:latest common/phpmetrics
	docker build --tag=ajardin/phpstan:latest common/phpstan
	docker build --tag=ajardin/psalm:latest common/psalm
	docker build --tag=ajardin/security-checker:latest common/security-checker
	docker build --tag=ajardin/yarn:latest common/yarn
.PHONY: common

magento2: ## Builds all "magento2" images
	docker build --tag=ajardin/magento2-elasticsearch:6.8 --tag=ajardin/magento2-elasticsearch:latest magento2/elasticsearch/6.8
	docker build --tag=ajardin/magento2-elasticsearch:7.6 magento2/elasticsearch/7.6
	docker build --tag=ajardin/magento2-mysql:latest magento2/mysql
	docker build --tag=ajardin/magento2-nginx:latest magento2/nginx
	docker build --tag=ajardin/magento2-php:7.2 magento2/php/7.2
	docker build --tag=ajardin/magento2-php:7.3 --tag=ajardin/magento2-php:latest magento2/php/7.3
	docker build --tag=ajardin/magento2-php:7.4 magento2/php/7.4
.PHONY: magento2

sylius: ## Builds all "sylius" images
	docker build --tag=ajardin/sylius-php:7.3 sylius/php/7.3
	docker build --tag=ajardin/sylius-php:7.4 --tag=ajardin/sylius-php:latest sylius/php/7.4
	docker build --tag=ajardin/sylius-php:8.0 sylius/php/8.0
.PHONY: sylius

symfony: ## Builds all "symfony" images
	docker build --tag=ajardin/symfony-php:7.1 symfony/php/7.1
	docker build --tag=ajardin/symfony-php:7.2 symfony/php/7.2
	docker build --tag=ajardin/symfony-php:7.3 symfony/php/7.3
	docker build --tag=ajardin/symfony-php:7.4 --tag=ajardin/symfony-php:latest symfony/php/7.4
	docker build --tag=ajardin/symfony-php:8.0 symfony/php/8.0
.PHONY: symfony

help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' \
		| sed -e 's/\[32m##/[33m/'
.DEFAULT_GOAL := help
