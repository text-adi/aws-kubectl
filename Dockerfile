FROM ubuntu:24.04

LABEL version="1"
LABEL repository="https://github.com/text-adi/aws-kubectl"
LABEL homepage="https://github.com/text-adi"
LABEL maintainer="text-adi <text-adi@github.com>"


COPY ./build/kubectl  /tmp
COPY ./build/awscli/ /tmp

RUN install -o root -g root -m 0755 /tmp/kubectl /usr/local/bin/kubectl && /tmp/aws/install && rm -rf /tmp/*

COPY files/ /root/.aws/
COPY script/docker-entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/docker-entrypoint.sh

