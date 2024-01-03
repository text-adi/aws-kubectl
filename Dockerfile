FROM ubuntu:24.04

LABEL version="1"
LABEL repository="https://github.com/text-adi/aws-kubectl"
LABEL homepage="https://github.com/text-adi"
LABEL maintainer="text-adi <text-adi@github.com>"


# install kubectl
COPY --from=kubectl /app/kubectl /tmp
RUN install -o root -g root -m 0755 /tmp/kubectl /usr/local/bin/kubectl &&


# install aws-cli
RUN apt-get update &&  \
    apt-get install awscli -y

