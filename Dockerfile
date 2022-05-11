FROM ruby:3.1.2-slim-buster

ENV LANG=C.UTF-8
# ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
      gettext-base libmariadb3 libxml2 libxslt1.1 mariadb-client-10.3 \
      build-essential libxml2-dev libxslt-dev libmariadbclient-dev git

WORKDIR /opt/app
COPY Gemfile Gemfile.lock /opt/app/

RUN bundle install

COPY . /opt/app
