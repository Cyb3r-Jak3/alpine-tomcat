# Alpine Tomcat

This is a Docker image for running Tomcat on Alpine Linux. Continued from [davidcaste/docker-alpine-tomcat](https://github.com/davidcaste/docker-alpine-tomcat) but using Eclipse Temurin instead of OpenJDK.

## Usage

Image is available on [Docker Hub](https://hub.docker.com/r/cyb3rjak3/alpine-tomcatt) and [GitHub Container Registry](https://github.com/Cyb3r-Jak3/alpine-tomcat/pkgs/container/alpine-tomcat). Using `cyb3rjak3/alpine-tomcat` and `ghcr.io/cyb3rjak3/alpine-tomcat` respectively.

Version tag is template of `<JAVA_VERSION>-<JAVA_RUNTIME>-<TOMCAT_VERSION>` where `JAVA_VERSION` is the version of Java, `JAVA_RUNTIME` is the runtime used (either `jre` or `jdk`) and `TOMCAT_VERSION` is the version of Tomcat.

Java Version: 11, 17, 20
Java Runtime: jdk, jre
Tomcat Version: 10.1.8 - 10.1.15
