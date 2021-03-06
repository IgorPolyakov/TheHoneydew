FROM ruby:2.5.3-alpine

RUN apk add --update tzdata && \
    cp /usr/share/zoneinfo/Asia/Tomsk /etc/localtime && \
    echo "Asia/Tomsk" > /etc/timezone

RUN apk update && apk add nodejs git build-base postgresql-dev
RUN mkdir /app
WORKDIR /app

COPY Gemfile ./Gemfile
COPY Gemfile.lock ./Gemfile.lock

RUN bundle install -j 8
COPY . .
