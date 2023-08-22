#define base docker image
FROM openjdk:20
LABEL maintainer="divum.in"
ADD target/ToDo-App-0.0.1-SNAPSHOT.war ToDo-docker.war
ENTRYPOINT ["java","-jar","ToDo-docker.war"]