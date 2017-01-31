# android-build
Docker image for building Android apps on CIs for myself (Not intended to be used on individual computers)    

## What does this image do?
Only setups environment to build your app.   

## How to build my app?
- Go to the directory where your top-level build.gradle exists.
- Run `gradle build` .
- Wait for the process finishes.
- Check the result. If you see `BUILD SUCCESSFUL` at the bottom of the build log, your build is done.

## Version of softwares this image installs
- Gradle 2.14.1
- Android SDK 25.2.4
- Java 8
- Android NDK r13b (Only `ndk` tag)

## I want to install more SDK packages. How to do it?
- Just use `install_sdk_package PACKAGE_TO_INSTALL`
You should install only one image per a command because SDK installer may requires more than one license to agree.   

## Dockerfiles
`latest` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/Dockerfile) based on [bitrise-docker](https://github.com/bitrise-docker/)'s [android](https://github.com/bitrise-docker/android)    
`ndk` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/ndk/Dockerfile) based on [bitrise-docker](https://github.com/bitrise-docker/)'s [android-ndk](https://github.com/bitrise-docker/android-ndk)    
`gradle-2.14.1` [Dockerfile](https://github.com/nao20010128nao/android-build/blob/master/gradle-2.14.1/Dockerfile)     
