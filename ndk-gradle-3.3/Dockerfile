FROM nao20010128nao/android-build:sdk-gradle3.3
MAINTAINER nao20010128nao

ENV ANDROID_NDK_HOME=/opt/android-ndk PATH=${PATH}:${ANDROID_NDK_HOME}:${ANDROID_HOME}/cmake/bin

RUN apt-get update -qq && apt upgrade -y -qq && apt-get clean && rm -rf /var/lib/apt/lists/* && \

    mkdir /opt/android-ndk-tmp && \
    cd /opt/android-ndk-tmp && wget -q https://dl.google.com/android/repository/android-ndk-r13b-linux-x86_64.zip && \
    unzip -q android-ndk-r13b-linux-x86_64.zip && mv ./android-ndk-r13b ${ANDROID_NDK_HOME} && \
    rm -rf /opt/android-ndk-tmp && \

    mkdir /opt/android-cmake-tmp && \
    cd /opt/android-cmake-tmp && wget -q https://dl.google.com/android/repository/cmake-3.6.3155560-linux-x86_64.zip -O android-cmake.zip && \
    unzip -q android-cmake.zip -d android-cmake && mv ./android-cmake ${ANDROID_HOME}/cmake && \
    rm -rf /opt/android-cmake-tmp
