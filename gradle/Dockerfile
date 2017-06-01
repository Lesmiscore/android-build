FROM nao20010128nao/my-docker-images:openjdk-8-jdk-ubuntu-old
MAINTAINER nao20010128nao

ARG GRADLE_VERSION
ENV GRADLE_BIN_PATH=/opt/gradle/bin PATH=${PATH}:/opt/gradle/bin

RUN cd /opt && wget --output-document=gradle.zip https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip && \
    unzip gradle.zip && \
    mv gradle-${GRADLE_VERSION} /opt/gradle
