FROM node:12

WORKDIR /app

RUN apt-get update && apt-get -f -y install unzip wget

COPY package.json /app

RUN npm install

RUN apt-get update
RUN apt-get install -y build-essential
RUN npm install -g gulp
RUN npm install -g bower
