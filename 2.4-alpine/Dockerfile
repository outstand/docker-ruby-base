FROM outstand/fsconsul as fsconsul

FROM ruby:2.4.7-alpine3.10
LABEL maintainer="Ryan Schlesinger <ryan@outstand.com>"

COPY --from=fsconsul /bin/fsconsul /bin/
RUN apk add --no-cache ca-certificates wget openssl jq git bash tini su-exec

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV BUNDLER_VERSION 2.0.2
RUN gem install bundler -v ${BUNDLER_VERSION} -i /usr/local/lib/ruby/gems/$(ls /usr/local/lib/ruby/gems) --force
