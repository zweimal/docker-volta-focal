FROM frolvlad/alpine-glibc

# install dependencies
RUN apk update
RUN apk add --no-cache \
bash \
ca-certificates \
curl \
git \
openssl \
python3 \
shadow

RUN cp /etc/pam.d/groupadd /etc/pam.d/chsh
RUN chsh -s /bin/bash
SHELL ["/bin/bash", "-c"]

ENV BASH_ENV ~/.bashrc
ENV VOLTA_HOME /root/.volta
ENV PATH $VOLTA_HOME/bin:$PATH

RUN mkdir -p $VOLTA_HOME/bin

# install volta
RUN curl https://get.volta.sh | bash