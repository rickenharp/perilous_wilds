FROM ruby:3.2.6-alpine

ARG bundle_without
EXPOSE 3000

RUN gem install bundler:2.2.15
RUN apk -U --no-cache upgrade
RUN apk --update --no-cache add --virtual build_deps \
  build-base libc-dev linux-headers
RUN bundle config set --local deployment 'true' && \
  bundle config set --local without "$bundle_without"
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app/
COPY Gemfile.lock /usr/src/app/
COPY .ruby-version /usr/src/app/
RUN bundle install
COPY . /usr/src/app

CMD ["bundle", "exec", "puma", "-v", "-e", "production"]
