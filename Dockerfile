FROM ruby:2.7-alpine

ARG bundle_without
EXPOSE 9292
RUN apk --update --no-cache add --virtual build_deps \
  build-base ruby-dev libc-dev linux-headers \
  openssl-dev postgresql-dev libxml2-dev libxslt-dev
RUN bundle config --global frozen 1
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
RUN bundle install --without "$bundle_without" --deployment
COPY . /usr/src/app

CMD ["bundle", "exec", "puma", "-v", "-e", "production"]
