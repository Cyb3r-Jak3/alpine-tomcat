variable "TOMCAT_VERSION" {
    # renovate: datasource=github-tags depName=apache/tomcat versioning=semver
    default = "10.1.17"
}

group "all" {
    targets = ["11-jre", "11-jre","17-jre","17-jdk","20-jre","20-jdk"]
}

group "release" {
    targets = [
        "11-jre-release",
        "11-jdk-release",
        "17-jre-release",
        "17-jdk-release",
        "20-jre-release",
        "20-jdk-release",
    ]
}

target "11-jre" {
    tags = [
        "cyb3rjak3/alpine-tomcat:11-jre-${TOMCAT_VERSION}",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:11-jre-${TOMCAT_VERSION}",
    ]
    args = {
        JAVA_VERSION = "11-jre"
        TOMCAT_VERSION = TOMCAT_VERSION
    }
}

target "11-jdk" {
    tags = [
        "cyb3rjak3/alpine-tomcat:11-jdk-${TOMCAT_VERSION}",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:11-jdk-${TOMCAT_VERSION}",
    ]
    args = {
        JAVA_VERSION = "11-jdk"
        TOMCAT_VERSION = TOMCAT_VERSION
    }
}

target "17-jre" {
    tags = [
        "cyb3rjak3/alpine-tomcat:17-jre-${TOMCAT_VERSION}",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:17-jre-${TOMCAT_VERSION}",
    ]
    args = {
        JAVA_VERSION = "17-jre"
        TOMCAT_VERSION = TOMCAT_VERSION
    }
}

target "17-jdk" {
    tags = [
        "cyb3rjak3/alpine-tomcat:17-jdk-${TOMCAT_VERSION}",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:17-jdk-${TOMCAT_VERSION}",
    ]
    args = {
        JAVA_VERSION = "17-jdk"
        TOMCAT_VERSION = TOMCAT_VERSION
    }
}

target "20-jre" {
    tags = [
        "cyb3rjak3/alpine-tomcat:20-jre-${TOMCAT_VERSION}",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:20-jre-${TOMCAT_VERSION}",
    ]
    args = {
        JAVA_VERSION = "20-jre"
        TOMCAT_VERSION = TOMCAT_VERSION
    }
}

target "20-jdk" {
    tags = [
        "cyb3rjak3/alpine-tomcat:20-jdk-${TOMCAT_VERSION}",
        "ghcr.io/cyb3r-jak3/alpine-tomcat:20-jdk-${TOMCAT_VERSION}",
    ]
    args = {
        JAVA_VERSION = "20-jdk"
        TOMCAT_VERSION = TOMCAT_VERSION
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

target "20-jre-release" {
    inherits = ["docker-metadata-action", "20-jre"]
} 

target "20-jdk-release" {
    inherits = ["docker-metadata-action", "20-jdk"]
} 