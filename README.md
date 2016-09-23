# DevOps Demo

This is a sample project to try out various tools

Steps
-  Bootstrapping rails with docker https://docs.docker.com/compose/rails/
  Setup Dockerfile, Gemfile, Gemfile.lock, and docker-compose.yml as above
  ```
  docker-compose run web rails new . --api --skip-action-mailer --skip-active-record --skip-action-cable --skip-spring --skip-listen --skip-bundle
  ```
  This app does not have a database or asset pipeline (javascript/css)


Tools
- docker
- docker-compose
