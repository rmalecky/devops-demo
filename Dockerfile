FROM ruby:2.3.1
RUN apt-get update -qq && apt-get install -y build-essential
RUN mkdir /devops-demo
WORKDIR /devops-demo
ADD Gemfile /devops-demo/Gemfile
ADD Gemfile.lock /devops-demo/Gemfile.lock
RUN bundle install
ADD . /devops-demo
