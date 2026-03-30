prepare-env:
	cp -n app/.env.example .env

setup:
	docker-compose run --rm app make setup

ci:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app

test:
	docker-compose -f docker-compose.yml up --abort-on-container-exit

dev:
	docker-compose up

build-production:
	docker-compose -f docker-compose.yml build app

push-production:
	docker-compose -f docker-compose.yml push app
