# DevOps Demo

This is a sample project to try out various tools

Steps
-  Bootstrapping rails with docker https://docs.docker.com/compose/rails/
  Setup Dockerfile, Gemfile, Gemfile.lock, and docker-compose.yml as above
  ```
  docker-compose run web rails new . --api --skip-action-mailer --skip-active-record --skip-action-cable --skip-spring --skip-listen --skip-bundle
  ```
  This app does not have a database or asset pipeline (javascript/css)

- git/github
  - `git init`
  - `git add -A`
  - `git commit -m 'initial commit'`
  - create repo on github
  - `git remote add origin git@github.com:rmalecky/devops-demo.git`
  - `git push -u origin master`

- Add CodeClimate
  - Install [CodeClimate CLI](https://github.com/codeclimate/codeclimate)
  ```
  brew tap codeclimate/formulae
  brew install codeclimate
  ```
  - Initalize codeclimate
  ```
  codeclimate init
  ```
  - customize .codeclimate.yml
  - add repo on codeclimate.com
- Add TravisCI
  - add .travis.yml
  - enable on travis-ci.org

Tools
- docker
- docker-compose
- github
- codeclimate
- travis-ci
