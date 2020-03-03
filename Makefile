all: install up
.PHONY: all

up:
	docker-compose up -d
.PHONY: up
	
install:
	docker-compose run composer install --ignore-platform-reqs --no-interaction
.PHONY: install

migrate:
	docker-compose run php-cli bin/cake migrations migrate
.PHONY: migrate

test:
	docker-compose run php-cli ./vendor/bin/phpunit
.PHONY: test

clean:
	docker-compose down
.PHONY: clean

app:
	docker-compsoe run web bash
.PHONY: app

db:
	docker-compose run db  bash
.PHONY: db

config:
	docker-compose config
.PHONY: config

check:
	docker-compose ps
.PHONY: check

images:
	docker-compose images
.PHONY: images

logs:
	docker-compose logs
.PHONY: logs

res:
	docker-compose restart
.PHONY: res

rm:
	docker-compose rm
.PHONY: rm

start:
	docker-compose start
.PHONY: start

stop:
	docker-compose stop
.PHONY: stop

