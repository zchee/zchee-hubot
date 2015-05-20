FROM iojs:latest
MAINTAINER zchee <zcheeee@gmail.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm config set registry http://registry.npmjs.org/ && npm install --no-optional --verbose
COPY . /usr/src/app

EXPOSE 8080
CMD [ "bin/hubot", "--adapter", "slack" ]
