# Alpine Tomcat

This is a Docker image for running Tomcat on Alpine Linux. Continued from [davidcaste/docker-alpine-tomcat](https://github.com/davidcaste/docker-alpine-tomcat) but using Eclipse Temurin instead of OpenJDK.

## Usage

Image is available on [Docker Hub](https://hub.docker.com/r/robertdebock/alpine-tomcat) and GitHub Container Registry. Using `cyb3rjak3/alpine-tomcat` and `ghcr.io/cyb3rjak3/alpine-tomcat` respectively.

Version tag is template of `<JAVA_VERSION>-<JAVA_RUNTIME>-<TOMCAT_VERSION>` where `JAVA_VERSION` is the version of Java, `JAVA_RUNTIME` is the runtime used (either `jre` or `jdk`) and `TOMCAT_VERSION` is the version of Tomcat.

The following matrix shows the currently supported versions.

| Java Version | Java Runtime | Tomcat Version | Tag |
| ------------ | ------------ | -------------- | --- |
| 11           | jdk          | 10.1.8         | 11-jdk-10.1.8 |
| 11           | jre          | 10.1.8         | 11-jre-10.1.8 |
| 17           | jdk          | 10.1.8         | 17-jdk-10.1.8 |
| 17           | jre          | 10.1.8         | 17-jre-10.1.8 |
| 20           | jdk          | 10.1.8         | 20-jdk-10.1.8 |
| 20           | jre          | 10.1.8         | 20-jre-10.1.8 |
