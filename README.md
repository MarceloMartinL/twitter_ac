# Twitter AC

This app retrieves the last 50 tweets with hastags #chiledesperto or #chilequierecambios every 5s, then updates the index view in real-time throught action cable.

## Requirements

- Docker
- Docker-compose
- Twitter API tokens

## How To Use

Create a .env file in the root folder and set the ENV variables:
```
# Database config

POSTGRES_DB=<YOUR DB (default: 'db')>
POSTGRES_USER=<YOUR DB USER>
POSTGRES_PASSWORD=<YOUR DB PASS>

# Twitter API config

TWITTER_API_KEY=<YOUR TOKEN>
TWITTER_SECRET_KEY=<YOUR TOKEN>
TWITTER_ACCESS_TOKEN=<YOUR TOKEN>
TWITTER_SECRET_TOKEN=<YOUR TOKEN>

# Sidekiq config

REDIS_SIDEKIQ_URL=redis://redis:6379/12
```
The run the following commands to start the app:
```
$ docker-compose run web bundle install
$ docker-compose run web rails db:create
$ docker-compose run web rails up --build
```
