FROM node:12.16.1-buster

# Install node prereqs, nodejs and yarn
# Ref: https://deb.nodesource.com/setup_12.x
# Ref: https://yarnpkg.com/en/docs/install
RUN \
  apt-get update && \
  apt-get install -yqq python yarn python-pip && \
  pip install -U pip && pip install pipenv && \
  npm i -g npm@^6 && \
  npm i -g eslint && \
  rm -rf /var/lib/apt/lists/*
