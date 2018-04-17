FROM outstand/fsconsul as fsconsul

FROM ruby:2.5.1-alpine3.7
LABEL maintainer="Ryan Schlesinger <ryan@outstand.com>"

COPY --from=fsconsul /bin/fsconsul /bin/
RUN apk add --no-cache ca-certificates wget openssl jq git bash tini su-exec

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
