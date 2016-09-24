# DevOps Demo

This is a sample project to try out various tools

Steps
-  Bootstrapping rails with docker https://docs.docker.com/compose/rails/
  Setup Dockerfile, Gemfile, Gemfile.lock, and docker-compose.yml as above
  ```
  docker-compose run web rails new . --api --skip-action-mailer --skip-active-record --skip-action-cable --skip-spring --skip-listen --skip-bundle
  docker-compose build
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

- Add some code/tests!
  run test with `docker-compose web rake`

- Create Docker Repository (AWS ECR) and have travis build/push images
  - create registry (cloudformation template)
  - create AWS IAM user from travis (cloudformation template)
  - create key pair for travis IAM user, encrypt and add to travis
  ```
  aws iam create-access-key --user-name devops-demo-travis
  travis encrypt AWS_SECRET_ACCESS_KEY=XXXXSECRETXXXX --add
  travis encrypt AWS_SECRET_ACCESS_KEY=XXXXSECRETXXXX --add
  ```

Tools
- docker
- docker-compose
- github
- codeclimate
- travis-ci
- AWS CLI
- [Travis CLI](https://github.com/travis-ci/travis.rb)
