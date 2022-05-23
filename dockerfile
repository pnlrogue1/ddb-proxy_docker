# https://github.com/MrPrimate/ddb-importer

FROM node:18.2.0-bullseye-slim

RUN apt install git -y

RUN git clone git@github.com:MrPrimate/ddb-proxy.git

WORKDIR ddb-proxy

RUN yarn install

EXPOSE 443

RUN node index.js