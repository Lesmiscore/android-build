FROM nao20010128nao/my-docker-images:openjdk-8-jdk-ubuntu
MAINTAINER nao20010128nao

ENV GRADLE_BIN_PATH=/opt/gradle/bin PATH=${PATH}:${GRADLE_BIN_PATH}

RUN cd /opt && wget --output-document=gradle.zip https://services.gradle.org/distributions/gradle-3.3-bin.zip&& \
    unzip gradle.zip && \
    mv gradle-3.3 /opt/gradle
