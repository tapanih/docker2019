FROM rubylang/ruby:2.6.0-bionic
WORKDIR /rails-example

RUN apt-get update && apt-get install -y curl libsqlite3-dev
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash
RUN apt-get install -y nodejs

COPY . .
RUN gem install bundler
RUN bundle install

ENV RAILS_ENV=production
ENV SECRET_KEY_BASE=sekret
RUN rails db:migrate
RUN rake assets:precompile

ENV RAILS_LOG_TO_STDOUT=true
CMD ["rails", "s", "-e", "production"]

EXPOSE 3000