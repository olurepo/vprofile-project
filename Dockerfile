FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/*.war $PROJECT_HOME/vprofile-v2.war

WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java" ,"-jar","./vprofile-v2.war"]
