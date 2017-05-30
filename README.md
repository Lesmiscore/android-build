# android-build
Docker image for building Android apps on CIs for myself (Not intended to be used on individual computers)    
[![build status](https://gitlab.com/nao20010128nao/android-build/badges/master/build.svg)](https://gitlab.com/nao20010128nao/android-build/commits/master)

## What does this image does?
Only setups environment to build your app.   

## Quick usage
- Go to the directory where your top-level build.gradle exists.
- Run `gradle build` .
- Wait for the process finishes.
- Check the result. If you see `BUILD SUCCESSFUL` at the bottom of the build log, your build is done.

## Version of softwares this image provides
- Gradle 2.14.1 or 3.3
- Android SDK 25.2.4
- Java 8
- Android NDK r13b (Only `ndk` tag)

## I want to install more SDK packages. How to do it?
- Just use `install_sdk_package PACKAGE_TO_INSTALL`
You should install only one image per a command because SDK installer may requires more than one license to agree.   

## Dockerfiles
- `latest`,`sdk`,`sdk-gradle-2.14.1` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/sdk-gradle-2.14.1/Dockerfile) based on [bitrise-docker](https://github.com/bitrise-docker/)'s [android](https://github.com/bitrise-docker/android)
- `ndk`,`ndk-gradle-2.14.1` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/ndk-gradle-2.14.1/Dockerfile) based on [bitrise-docker](https://github.com/bitrise-docker/)'s [android-ndk](https://github.com/bitrise-docker/android-ndk)
- `gradle-2.14.1` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/gradle-2.14.1/Dockerfile)
- `sdk-gradle-3.3` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/sdk-gradle-3.3/Dockerfile)
- `ndk-gradle-3.3` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/ndk-gradle-3.3/Dockerfile)
- `gradle-3.3` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/gradle-3.3/Dockerfile)
