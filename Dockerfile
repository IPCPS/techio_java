# Minimal Docker image for Java Tech.io playground using Alpine base
FROM alpine:3.13.5
MAINTAINER Niema Moshiri <niemamoshiri@gmail.com>

# install dependencies
RUN apk update && \
    apk add openjdk11 && \
    ln -s "$(readlink -f $(which java))c" "$(which java)c"
