##
## ----------------------------------------------------------------------------
##   DOCKER IMAGES
## ----------------------------------------------------------------------------
##

all: common magento2 orocommerce php ## Builds all Docker images
.PHONY: all

common: ## Builds all "common" images
	docker build --tag=ajardin/nginx:latest common/nginx
	docker build --tag=ajardin/php-entrypoint:latest common/php-entrypoint
	docker build --tag=ajardin/synchro:latest common/synchro
.PHONY: common

magento2: ## Builds all "magento2" images
	docker build --tag=ajardin/magento2-elasticsearch:7 magento2/elasticsearch/7.x
	docker build --tag=ajardin/magento2-elasticsearch:8 magento2/elasticsearch/8.x
	docker build --tag=ajardin/magento2-nginx:latest magento2/nginx
.PHONY: magento2

orocommerce: ## Builds all "orocommerce" images
	docker build --tag=ajardin/orocommerce-rabbitmq:3.8 orocommerce/rabbitmq/3.8
.PHONY: orocommerce

php: ## Builds all "php" images
	docker build --tag=ajardin/php:7.3 php/7.3
	docker build --tag=ajardin/php:7.3-blackfire php/7.3/blackfire
	docker build --tag=ajardin/php:7.3-xdebug php/7.3/xdebug
	docker build --tag=ajardin/php:7.4 php/7.4
	docker build --tag=ajardin/php:7.4-blackfire php/7.4/blackfire
	docker build --tag=ajardin/php:7.4-xdebug php/7.4/xdebug
	docker build --tag=ajardin/php:8.0 php/8.0
	docker build --tag=ajardin/php:8.0-blackfire php/8.0/blackfire
	docker build --tag=ajardin/php:8.0-xdebug php/8.0/xdebug
	docker build --tag=ajardin/php:8.1 php/8.1
	docker build --tag=ajardin/php:8.1-blackfire php/8.1/blackfire
	docker build --tag=ajardin/php:8.1-xdebug php/8.1/xdebug
	docker build --tag=ajardin/php:8.2 php/8.2
	docker build --tag=ajardin/php:8.2-blackfire php/8.2/blackfire
	docker build --tag=ajardin/php:8.2-xdebug php/8.2/xdebug
.PHONY: php

help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' \
		| sed -e 's/\[32m##/[33m/'
.DEFAULT_GOAL := help
