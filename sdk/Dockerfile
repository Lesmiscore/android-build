ARG GRADLE_VERSION
FROM nao20010128nao/android-build:gradle-${GRADLE_VERSION}
MAINTAINER nao20010128nao
ARG ANDROID_SDK_VERSION=25.2.4

ENV ANDROID_HOME=/opt/android-sdk-linux
ENV PATH=${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools

ADD install_sdk_packages.sh /usr/local/bin/install_sdk_packages.sh
ADD install_sdk_package /usr/local/bin/install_sdk_package

RUN apt-get update -qq && \
    dpkg --add-architecture i386 && \
    apt-get update -qq && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y libc6:i386 libstdc++6:i386 libgcc1:i386 libncurses5:i386 libz1:i386 wget && \
    rm -rf /var/lib/apt/lists/* && \
    
    cd /opt && wget -q https://dl.google.com/android/repository/tools_r${ANDROID_SDK_VERSION}-linux.zip -O android-sdk-tools.zip && \
    unzip -q android-sdk-tools.zip && \
    mkdir -p ${ANDROID_HOME} && \
    mv tools/ ${ANDROID_HOME}/tools/ && \
    rm -f android-sdk-tools.zip && \

    chmod +x /usr/local/bin/install_sdk_packages.sh && \
    chmod +x /usr/local/bin/install_sdk_package && \
    sync && \
    install_sdk_packages.sh
