FROM ruby:3.4.1

RUN apt-get update -qq && apt-get install -y nodejs default-mysql-client

WORKDIR /rails_app

COPY Gemfile ./

RUN bundle install

COPY . .

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
