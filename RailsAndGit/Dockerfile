FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /RailsAndGit
WORKDIR /RailsAndGit
COPY Gemfile /RailsAndGit/Gemfile
COPY Gemfile.lock /RailsAndGit/Gemfile.lock
RUN bundle install
COPY . /RailsAndGit