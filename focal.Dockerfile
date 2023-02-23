FROM ubuntu:focal

# install dependencies
RUN apt-get update
RUN apt-get install -y \
  curl \
  ca-certificates \
  --no-install-recommends

SHELL ["/bin/bash", "-c"]

ENV BASH_ENV ~/.bashrc
ENV VOLTA_HOME /root/.volta
ENV PATH $VOLTA_HOME/bin:$PATH

# install volta
RUN curl https://get.volta.sh | bash

