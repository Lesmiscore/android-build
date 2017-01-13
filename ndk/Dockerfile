FROM nao20010128nao/android-build:latest

ENV ANDROID_NDK_HOME /opt/android-ndk

RUN apt-get update -qq


RUN mkdir /opt/android-ndk-tmp
RUN cd /opt/android-ndk-tmp && wget -q https://dl.google.com/android/repository/android-ndk-r13b-linux-x86_64.zip
RUN cd /opt/android-ndk-tmp && unzip -q android-ndk-r13b-linux-x86_64.zip
RUN cd /opt/android-ndk-tmp && mv ./android-ndk-r13b ${ANDROID_NDK_HOME}
RUN rm -rf /opt/android-ndk-tmp
ENV PATH ${PATH}:${ANDROID_NDK_HOME}


RUN mkdir /opt/android-cmake-tmp
RUN cd /opt/android-cmake-tmp && wget -q https://dl.google.com/android/repository/cmake-3.6.3155560-linux-x86_64.zip -O android-cmake.zip
RUN cd /opt/android-cmake-tmp && unzip -q android-cmake.zip -d android-cmake
RUN cd /opt/android-cmake-tmp && mv ./android-cmake ${ANDROID_HOME}/cmake
RUN rm -rf /opt/android-cmake-tmp
ENV PATH ${PATH}:${ANDROID_HOME}/cmake/bin

RUN apt-get clean
