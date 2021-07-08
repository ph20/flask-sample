# syntax=docker/dockerfile:1
# for building run:
#    docker build -t local/flask-sample .
# Usage:
#    docker run -p 127.0.0.1:8088:8088/tcp --rm -it local/flask-sample:latest

FROM registry.access.redhat.com/ubi8/ubi-minimal:8.4
EXPOSE 8080
USER 0
ARG PIPINSTALL_OPTS=flask-sample
ENV GUNICORN_APP_MODULE=flask_sample.wsgi

ENV PYTHON_VERSION=3.9 \
    PYTHONUNBUFFERED=1 \
    PYTHONIOENCODING=UTF-8 \
    PIP_NO_CACHE_DIR=off

RUN microdnf install --nodocs python39
RUN /usr/bin/pip3.9 install $PIPINSTALL_OPTS
RUN /usr/bin/pip3.9 install gunicorn
WORKDIR /webapp
USER 1001
CMD /usr/local/bin/gunicorn --bind 0.0.0.0:8088 $GUNICORN_APP_MODULE
