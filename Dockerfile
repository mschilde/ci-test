FROM node:0.10.40-slim

MAINTAINER Marko Schilde

COPY . /opt/ci-test
WORKDIR /opt/ci-test

RUN npm install

EXPOSE 3000

CMD ["./node_modules/coffee-script/bin/coffee", "/opt/ci-test/index.coffee"]