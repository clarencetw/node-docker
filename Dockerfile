FROM ubuntu:20.04

RUN apt-get update -qq && apt-get install -qqy \
    apt-transport-https \
    ca-certificates \
    curl \
    lxc \
    iptables

RUN curl -sSL https://get.docker.com/ | sh

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt-get install -y nodejs

RUN node --version && \
    npm --version

VOLUME /var/lib/docker

WORKDIR /app
COPY index.js .

CMD [ "node", "index.js" ]