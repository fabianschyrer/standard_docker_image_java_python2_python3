FROM python:3.6

RUN mkdir -p /app
WORKDIR /app

ENV PATH $PATH:/app/google-cloud-sdk/bin:/root/google-cloud-sdk/bin
RUN curl -sSL https://sdk.cloud.google.com | bash
