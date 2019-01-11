FROM ruby:2.6

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./
RUN bundle install

COPY . .

CMD ["bundle", "exec", "ruby", "app.rb", "-o", "0.0.0.0"]