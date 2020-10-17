# インストールするrubyのバージョン指定
FROM ruby:2.7.1

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list


RUN apt-get update
RUN apt-get install -y nodejs postgresql-client yarn wget sudo vim

RUN mkdir /omusubi
WORKDIR /omusubi
COPY Gemfile /omusubi/Gemfile
COPY Gemfile.lock /omusubi/Gemfile.lock
RUN bundle install
COPY . /omusubi

COPY package.json /omusubi/package.json
RUN yarn install

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
