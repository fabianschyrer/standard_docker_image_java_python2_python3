FROM python:2.7.14-alpine3.7

RUN mkdir -p /app
WORKDIR /app

RUN apk --update add python py-pip openssl ca-certificates py-openssl wget
RUN apk --update add --virtual build-dependencies libffi-dev openssl-dev python-dev py-pip build-base \
  && pip install --upgrade pip

ENV CLOUDSDK_CORE_DISABLE_PROMPTS 1
ENV PATH $PATH:/app/google-cloud-sdk/bin:/root/google-cloud-sdk/bin

RUN apk --update add jq libapparmor-dev libseccomp-dev curl
RUN apt-get update -y
RUN apt-get install -y jq \
      libapparmor-dev \
      libseccomp-dev

RUN curl -sSL https://sdk.cloud.google.com | bash

RUN apk del build-dependencies