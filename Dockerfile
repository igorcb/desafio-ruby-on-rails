FROM ruby:2.5.3

RUN apt-get update && apt-get install -qq -y --no-install-recommends \
  build-essential nodejs libpq-dev imagemagick zlib1g-dev \
  libmagickwand-dev libmagickcore-dev vim

RUN mkdir /cnabapp

WORKDIR /cnabapp

ADD Gemfile /cnabapp/Gemfile

ADD Gemfile.lock /cnabapp/Gemfile.lock

RUN bundle install

RUN bundle lock --add-platform x86-mingw32 x86-mswin32 x64-mingw32 java

ADD . /cnabapp

