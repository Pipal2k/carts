#FROM java:openjdk-8-alpine
FROM java:openjdk-8u111-jdk-alpine

WORKDIR /usr/src/app
COPY ./target/*.jar ./app.jar

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/urandom","-jar","./app.jar", "--port=8080"]
