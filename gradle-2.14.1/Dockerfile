FROM nao20010128nao/my-docker-images:openjdk-8-jdk-ubuntu
MAINTAINER nao20010128nao

ENV GRADLE_BIN_PATH /opt/gradle/bin
RUN cd /opt && wget --output-document=gradle.zip https://services.gradle.org/distributions/gradle-2.14.1-bin.zip | tee /dev/null
RUN cd /opt && unzip gradle.zip
RUN cd /opt && mv gradle-2.14.1 /opt/gradle
ENV PATH ${PATH}:${GRADLE_BIN_PATH}
