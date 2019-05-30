FROM outstand/su-exec as su-exec
FROM outstand/tini as tini
FROM outstand/fsconsul as fsconsul

FROM ruby:2.4.6-stretch
LABEL maintainer="Ryan Schlesinger <ryan@outstand.com>"

COPY --from=su-exec /sbin/su-exec /sbin/
COPY --from=tini /sbin/tini /sbin/
COPY --from=fsconsul /bin/fsconsul /bin/

RUN apt-get update && apt-get install -y --no-install-recommends \
    locales \
    jq \
    openssl \
  && rm -rf /var/lib/apt/lists/*

RUN echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

ENV BUNDLER_VERSION 1.17.3
RUN gem install bundler -v ${BUNDLER_VERSION} -i /usr/local/lib/ruby/gems/$(ls /usr/local/lib/ruby/gems) --force
