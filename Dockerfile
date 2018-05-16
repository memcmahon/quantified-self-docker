FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /quantified_self_rails_docker
WORKDIR /quantified_self_rails_docker
COPY Gemfile /quantified_self_rails_docker/Gemfile
COPY Gemfile.lock /quantified_self_rails_docker/Gemfile.lock
RUN bundle install
COPY . /quantified_self_rails_docker
