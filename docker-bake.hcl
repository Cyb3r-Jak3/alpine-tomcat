group "all" {
    targets = ["11-jdk","11-jre","17-jdk","17-jre"]
}

group "release" {
    targets = [
        "11-jdk-release",
        "11-jre-release",
        "17-jdk-release",
        "17-jre-release",
    ]
}

target "11-jdk" {
    tags = [
        "cyb3rjak3/alpine-tomcat:11-jdk",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:11-jdk",
    ]
    args = {
        JAVA_VERSION = "11-jdk"
    }
}

target "11-jre" {
    tags = [
        "cyb3rjak3/alpine-tomcat:11-jre",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:11-jre",
    ]
    args = {
        JAVA_VERSION = "11-jre"
    }
}

target "17-jdk" {
    tags = [
        "cyb3rjak3/alpine-tomcat:17-jdk",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:17-jdk",
    ]
    args = {
        JAVA_VERSION = "17-jdk"
    }
}

target "17-jre" {
    tags = [
        "cyb3rjak3/alpine-tomcat:17-jre",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:17-jre",
    ]
    args = {
        JAVA_VERSION = "17-jre"
    }
}


// Special target: https://github.com/docker/metadata-action#bake-definition
target "docker-metadata-action" {
    platforms = [
        "linux/amd64",
    ]
}
target "11-jre-release" {
    inherits = ["docker-metadata-action", "11-jre"]
}

target "11-jdk-release" {
    inherits = ["docker-metadata-action", "11-jdk"]
}

target "17-jre-release" {
    inherits = ["docker-metadata-action", "17-jre"]
}

target "17-jdk-release" {
    inherits = ["docker-metadata-action", "17-jdk"]
} 