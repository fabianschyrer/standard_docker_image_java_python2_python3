FROM python:2.7.14-alpine3.7

RUN mkdir -p /app
WORKDIR /app

RUN apk --update add python py-pip openssl ca-certificates py-openssl wget
RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python-dev py-pip build-base \
  && pip install --upgrade pip

# RUN apk del build-dependencies