FROM ruby:2.7.6
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs vim
RUN npm install -g yarn
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app