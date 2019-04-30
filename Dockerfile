FROM openjdk:8-alpine
MAINTAINER Atomist <docker@atomist.com>
RUN mkdir -p /opt/app
WORKDIR /opt/app
EXPOSE 8080
COPY target/apr30spring.jar apr30spring.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","apr30spring.jar"]
