FROM simbco/dev
MAINTAINER Simeon Bateman <simeon@simb.co>

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev

ONBUILD COPY Gemfile /usr/src/app/
ONBUILD RUN bundle install
ONBUILD COPY . /usr/src/app
