### Hexlet tests and linter status:
[![Actions Status](https://github.com/Cersinss/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Cersinss/devops-for-developers-project-74/actions)
[![Push Workflow](https://github.com/Cersinss/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/Cersinss/devops-for-developers-project-74/actions/workflows/push.yml)

## Требования к системе

- **Docker**: установлен и запущен Docker Desktop
- **Docker Compose**: доступен как `docker compose` или `docker-compose`
- **Make**: нужен для удобных команд (либо запускайте команды `docker-compose ...` вручную)

## Образ в Docker Hub

Используется образ: `cersinss/devops-for-developers-project-74:latest`.

## Конфигурация (12-factor)

Приложение конфигурируется через переменные окружения:

- `DATABASE_HOST`
- `DATABASE_NAME`
- `DATABASE_USERNAME`
- `DATABASE_PASSWORD`
- `DATABASE_PORT`

Для локального запуска можно использовать файл `.env` (не хранится в репозитории):

```bash
make prepare-env
```

## Команды

- **Подготовка** (установка зависимостей и миграции внутри Docker):

```bash
make setup
```

- **Запуск в разработке** (Docker Compose + Caddy reverse proxy):

```bash
make dev
```

Открыть:
- `http://localhost` → редирект на `https://localhost`
- `https://localhost` → главная страница приложения

- **Тесты** (через Docker Compose):

```bash
make ci
```

## CI

Workflow `push` запускает тесты через Docker Compose, собирает production-образ и пушит его в Docker Hub с тегом `latest` (при наличии `DOCKERHUB_USERNAME` и `DOCKERHUB_TOKEN` в GitHub Secrets).