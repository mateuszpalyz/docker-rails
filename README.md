### Intro

(Rails + Postgres + Sidekiq) with Docker

### Steps to start the app

#### Build and start containers
```bash
docker-compose up --build
```

#### Setup database
```bash
docker-compose run web bundle exec rake db:setup
```
You're good to go :tada:
