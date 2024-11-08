FROM openjdk:17-jdk-alpine

LABEL maintainer="olvadis2004@gmail.com"

VOLUME /tmp

EXPOSE 8761

ARG JAR_FILE=./target/RegistryService-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} /registryService.jar

ENTRYPOINT ["java","-jar","/registryService.jar"]