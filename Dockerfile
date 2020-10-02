# インストールするrubyのバージョン指定
FROM ruby:2.7.1

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client wget sudo vim
RUN mkdir /omusubi
WORKDIR /omusubi
COPY Gemfile /omusubi/Gemfile
COPY Gemfile.lock /omusubi/Gemfile.lock
RUN bundle install
COPY . /omusubi

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
