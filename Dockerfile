FROM openjdk:8-jdk
MAINTAINER nao20010128nao

ENV ANDROID_HOME /opt/android-sdk-linux

RUN apt-get update -qq

RUN dpkg --add-architecture i386
RUN apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y libc6:i386 libstdc++6:i386 libgcc1:i386 libncurses5:i386 libz1:i386 wget

RUN cd /opt && wget -q https://dl.google.com/android/repository/tools_r25.2.4-linux.zip -O android-sdk-tools.zip
RUN cd /opt && unzip -q android-sdk-tools.zip
RUN mkdir -p ${ANDROID_HOME}
RUN cd /opt && mv tools/ ${ANDROID_HOME}/tools/
RUN cd /opt && rm -f android-sdk-tools.zip

ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/platform-tools

RUN echo y | android update sdk --no-ui --all --filter platform-tools | grep 'package installed'

RUN echo y | android update sdk --no-ui --all --filter android-25 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-24 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-23 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-22 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-21 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-20 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-19 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-17 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-15 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter android-10 | grep 'package installed'


RUN echo y | android update sdk --no-ui --all --filter build-tools-25.0.2 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-25.0.1 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-25.0.0 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-24.0.3 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-24.0.2 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-24.0.1 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-24.0.0 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-23.0.3 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-23.0.2 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-23.0.1 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-22.0.1 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-21.1.2 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-20.0.0 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-19.1.0 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter build-tools-17.0.0 | grep 'package installed'

RUN echo y | android update sdk --no-ui --all --filter extra-android-m2repository | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter extra-google-m2repository | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter extra-google-google_play_services | grep 'package installed'

RUN echo y | android update sdk --no-ui --all --filter addon-google_apis-google-23 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter addon-google_apis-google-22 | grep 'package installed'
RUN echo y | android update sdk --no-ui --all --filter addon-google_apis-google-21 | grep 'package installed'

ENV GRADLE_BIN_PATH /opt/gradle/bin
RUN cd /opt && wget --output-document=gradle.zip https://services.gradle.org/distributions/gradle-2.14.1-bin.zip
RUN cd /opt && unzip gradle.zip
RUN cd /opt && mv gradle-2.14.1 /opt/gradle
ENV PATH ${PATH}:${GRADLE_BIN_PATH}
