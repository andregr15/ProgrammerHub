FROM ruby:2.5.1

RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install -y --no-install-recommends nodejs yarn \ 
build-essential libpq-dev git-all nano imagemagick

ENV INSTALL_PATH /app

RUN mkdir -p $INSTALL_PATH

WORKDIR ${INSTALL_PATH}

COPY Gemfile ./

ENV BUNDLE_PATH /gems

COPY . .

RUN bundle install