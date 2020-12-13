.DEFAULT_GOAL := help
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

.PHONY: up
up: ## make up
	docker-compose up -d

.PHONY: ps
ps: ## make ps
	docker-compose ps

.PHONY: logs
logs: ## make logs
	docker-compose logs

.PHONY: down
down: ## make down
	docker-compose down -v

.PHONY: stop
stop: ## make stop
	docker-compose stop

.PHONY: rebuild
rebuild: ## make rebuild
	docker-compose up -d --build

.PHONY: app
app: ## make app
	docker-compose exec app /bin/bash

.PHONY: db
db: ## make db
	docker-compose exec db /bin/bash

.PHONY: logapp
logapp: ## make logapp
	docker-compose logs app

.PHONY: logdb
logdb: ## make logdb
	docker-compose logs db

.PHONY: curl
curl: ## make curl
	curl -I http://localhost:4000

