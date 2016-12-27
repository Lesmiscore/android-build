# android-build
Docker image for building Android apps on CIs (Not intended to be used on individual computers)    

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

## I want to install more SDK packages. How to do it?
- Just use `echo y | android update sdk --no-ui --all --filter PACKAGE_TO_INSTALL`
You should install only one image per a command because SDK installer may requires more than one license to agree.   

## Where is the Dockerfile for this image?
[Here.](https://github.com/nao20010128nao/android-build/blob/master/Dockerfile)
