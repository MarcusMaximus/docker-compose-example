# ARG values be overwritten at build time with e.g. "docker build --build-arg NEW_BASE --build-arg NEW_BASE_VERSION=x.y"
ARG BASE=python
ARG BASE_VERSION=3.6

FROM ${BASE}:${BASE_VERSION}

# To use with labels Arg needs to be redeclared after FROM https://docs.docker.com/engine/reference/builder/#understand-how-arg-and-from-interact
ARG BASE
ARG BASE_VERSION

LABEL buildBase=$BASE
LABEL buildBaseVersion=$BASE_VERSION
# Identify the maintainer of an image
LABEL maintainer="me@email.tld"

COPY requirements.txt /opt
COPY app.py /opt

COPY ./scripts /opt
RUN chmod 755 /opt/*.sh
RUN /opt/setup-base.sh

WORKDIR /opt
EXPOSE 5000

ENTRYPOINT ["/opt/entrypoint.sh"]