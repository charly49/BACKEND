FROM amazoncorretto:11-alpine-jdk
MAINTAINER CEG
COPY target/ceg-0.0.1-SNAPSHOT.jar backceg-app.jar
SPRINGBOOT.jar
ENTRYPOINT ["java","-jar","/backceg-app.jar"]