#!/bin/sh
install_sdk_package "platform-tools"

install_sdk_package "platforms;android-25"
install_sdk_package "platforms;android-24"
install_sdk_package "platforms;android-23"
install_sdk_package "platforms;android-22"
install_sdk_package "platforms;android-21"
install_sdk_package "platforms;android-20"
install_sdk_package "platforms;android-19"
install_sdk_package "platforms;android-17"
install_sdk_package "platforms;android-15"
install_sdk_package "platforms;android-10"


install_sdk_package "build-tools;25.0.3"
install_sdk_package "build-tools;25.0.2"
install_sdk_package "build-tools;25.0.1"
install_sdk_package "build-tools;25.0.0"
install_sdk_package "build-tools;24.0.3"
install_sdk_package "build-tools;24.0.2"
install_sdk_package "build-tools;24.0.1"
install_sdk_package "build-tools;24.0.0"
install_sdk_package "build-tools;23.0.3"
install_sdk_package "build-tools;23.0.2"
install_sdk_package "build-tools;23.0.1"
install_sdk_package "build-tools;23.0.0"
install_sdk_package "build-tools;22.0.1"
install_sdk_package "build-tools;22.0.0"
install_sdk_package "build-tools;21.1.2"
install_sdk_package "build-tools;21.1.1"
install_sdk_package "build-tools;21.1.0"
install_sdk_package "build-tools;21.0.2"
install_sdk_package "build-tools;21.0.1"
install_sdk_package "build-tools;21.0.0"
install_sdk_package "build-tools;20.0.0"
install_sdk_package "build-tools;19.1.0"
install_sdk_package "build-tools;19.0.3"
install_sdk_package "build-tools;19.0.2"
install_sdk_package "build-tools;19.0.1"
install_sdk_package "build-tools;19.0.0"
install_sdk_package "build-tools;18.1.1"
install_sdk_package "build-tools;18.1.0"
install_sdk_package "build-tools;18.0.1"
install_sdk_package "build-tools;17.0.0"

install_sdk_package "extras;android;m2repository"
install_sdk_package "extras;google;m2repository"
install_sdk_package "extras;google;google_play_services"

install_sdk_package "addon-google_apis-google-23" || true
install_sdk_package "addon-google_apis-google-22" || true
install_sdk_package "addon-google_apis-google-21" || true
