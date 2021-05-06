# syntax=docker/dockerfile:1

LABEL version="0.1.0"
LABEL maintainer="https://github.com/psamsotha"
LABEL description="AWS Elastic Beanstalk EC2 Java SE 8 environment for development (w/Maven)"

FROM amazonlinux:2

ARG MVN_VERSION=3.3.3
ARG MVN_INSTALL_DIR=/usr/local/maven-$MVN_VERSION
ARG MVN_DOWNLOAD_URL=https://archive.apache.org/dist/maven/maven-3/$MVN_VERSION/binaries/apache-maven-$MVN_VERSION-bin.tar.gz

RUN yum install -y java-1.8.0-openjdk-devel tar
RUN mkdir -p $MVN_INSTALL_DIR \
  && curl -fSL $MVN_DOWNLOAD_URL -o /tmp/maven.tar.gz \
  && tar -xzf /tmp/maven.tar.gz -C $MVN_INSTALL_DIR --strip-components=1 \
  && rm -f /tmp/maven.tar.gz \
  && ln -s $MVN_INSTALL_DIR/bin/mvn /usr/bin/mvn \
  && ln -s $MVN_INSTALL_DIR/bin/mvn.cmd /usr/bin/mvn.cmd \
  && ln -s $MVN_INSTALL_DIR/bin/mvnDebug /usr/bin/mvnDebug \
  && ln -s $MVN_INSTALL_DIR/bin/mvnDebug.cmd /usr/bin/mvnDebug.cmd \
  && ln -s $MVN_INSTALL_DIR/bin/mvnyjp /usr/bin/mvnyjp

ENV JAVA_HOME=/usr/lib/jvm/java
