##
## ----------------------------------------------------------------------------
##   GitHub Actions
## ----------------------------------------------------------------------------
##

build: ## Executes the "build" target on all custom images.
	docker build --tag ajardin/magento2-elasticsearch:latest magento2/elasticsearch/
	docker build --tag ajardin/magento2-mysql:latest magento2/mysql/
	docker build --tag ajardin/magento2-nginx:latest magento2/nginx/

	docker build --tag ajardin/magento2-php:default magento2/php/
	docker build --tag ajardin/magento2-php:blackfire magento2/php/blackfire/
	docker build --tag ajardin/magento2-php:xdebug magento2/php/xdebug/
	docker tag ajardin/magento2-php:default ajardin/magento2-php:latest

	docker build --tag ajardin/magento2-synchro:latest magento2/synchro/
.PHONY: build

publish: ## Executes the "publish" target on all custom images.
	docker push ajardin/magento2-elasticsearch:latest
	docker push ajardin/magento2-mysql:latest
	docker push ajardin/magento2-nginx:latest

	docker push ajardin/magento2-php:default
	docker push ajardin/magento2-php:blackfire
	docker push ajardin/magento2-php:xdebug
	docker push ajardin/magento2-php:latest

	docker push ajardin/magento2-synchro:latest
.PHONY: publish

help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)|(^##)' $(MAKEFILE_LIST) \
		| sed -e 's/^.*Makefile://g' \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}' \
		| sed -e 's/\[32m##/[33m/'
.PHONY: help
.DEFAULT_GOAL := help
