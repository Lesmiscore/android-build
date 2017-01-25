FROM nao20010128nao/android-build:gradle-2.14.1
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

ADD install_sdk_packages.sh /usr/local/bin/install_sdk_packages.sh
RUN chmod +x /usr/local/bin/install_sdk_packages.sh
RUN /usr/local/bin/install_sdk_packages.sh

ENV GRADLE_BIN_PATH /opt/gradle/bin
RUN cd /opt && wget --output-document=gradle.zip https://services.gradle.org/distributions/gradle-2.14.1-bin.zip | tee /dev/null
RUN cd /opt && unzip gradle.zip
RUN cd /opt && mv gradle-2.14.1 /opt/gradle
ENV PATH ${PATH}:${GRADLE_BIN_PATH}
