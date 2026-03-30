### Hexlet tests and linter status:
[![Actions Status](https://github.com/Cersinss/devops-for-developers-project-74/actions/workflows/hexlet-check.yml/badge.svg)](https://github.com/Cersinss/devops-for-developers-project-74/actions)
[![Push Workflow](https://github.com/Cersinss/devops-for-developers-project-74/actions/workflows/push.yml/badge.svg)](https://github.com/Cersinss/devops-for-developers-project-74/actions/workflows/push.yml)

## Требования к системе

- **Docker**
- **Docker Compose**
- **Make**

## Образ в Docker Hub

Используется образ: `cersinss/devops-for-developers-project-74:latest`.

## Конфигурация

Приложение конфигурируется через переменные окружения:

- `DATABASE_HOST`
- `DATABASE_NAME`
- `DATABASE_USERNAME`
- `DATABASE_PASSWORD`
- `DATABASE_PORT`

```bash
make prepare-env
```

## Команды

- **Подготовка**

```bash
make setup
```

- **Запуск в разработке**

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
