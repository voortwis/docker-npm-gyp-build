FROM alpine:3.4

MAINTAINER Klaasjan te Voortwis <voortwis@tikc.nl>

RUN apk add --no-cache --virtual .nodejs nodejs
RUN apk add --no-cache --virtual .gyp-deps python make gcc g++

RUN mkdir /code
WORKDIR /code

# Setup PATH to prioritize local npm bin ahead of system PATH.
ENV PATH node_modules/.bin:$PATH

CMD ["npm", "install"]
