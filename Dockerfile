# Minimal Docker image for Java Tech.io playground using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install dependencies
RUN apk update && \
    apk add bash openjdk11 python3 && \
    ln -s "$(readlink -f $(which java))c" "$(which java)c" && \
    wget -qO /usr/local/bin/tester.jar "https://github.com/IPCPS/techio_java/raw/main/tester.jar" && \
    wget -qO /usr/local/bin/junit-jupiter-api.jar "https://repo1.maven.org/maven2/org/junit/jupiter/junit-jupiter-api/5.8.0-M1/junit-jupiter-api-5.8.0-M1.jar" && \
    wget -qO /usr/local/bin/junit-platform-console-standalone.jar "https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/1.8.0-M1/junit-platform-console-standalone-1.8.0-M1.jar"
