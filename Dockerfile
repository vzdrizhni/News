FROM ruby:3.1.2
RUN apt-get update -qq && apt-get install
WORKDIR /app
COPY . .

COPY --chown=ruby:ruby Gemfile* ./
RUN bundle install
RUN rails db:migrate

EXPOSE 3000

ENTRYPOINT [ "bin/rails" ]
CMD ["s", "-b", "0.0.0.0"]
