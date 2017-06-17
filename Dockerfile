FROM debian:jessie-slim

RUN set -ex \
  && export DEBIAN_FRONTEND='noninteractive' \
  && apt-get update \
  && apt-get install -y --no-install-recommends --no-install-suggests \
    ca-certificates

RUN set -ex \
  && apt-get install -y --no-install-recommends --no-install-suggests \
    build-essential

RUN set -ex \
  && apt-get install -y --no-install-recommends --no-install-suggests \
    curl \

  && curl -sL https://deb.nodesource.com/setup_6.x | bash - \
  && apt-get install -y --no-install-recommends --no-install-suggests \
    nodejs

WORKDIR /project
COPY package.json /project/package.json

RUN set -ex \
  && npm install

COPY .babelrc /project/.babelrc
COPY webpack.config.js /project/webpack.config.js
