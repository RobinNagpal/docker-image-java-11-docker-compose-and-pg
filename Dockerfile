FROM openjdk:11

## Docker Compose
RUN curl -sL "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose

## Docker
RUN curl -sL "https://download.docker.com/linux/static/stable/$(uname -m)/docker-19.03.9.tgz" \
    | tar xzvf - -C /usr/local/bin/ --strip-components=1


RUN apt update

RUN apt --assume-yes  install postgresql postgresql-contrib

RUN  service postgresql stop
