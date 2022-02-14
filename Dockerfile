FROM openjdk:8u111-jdk-alpine
VOLUME /tmp
ADD /target/*.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-Djwt.awt.headless=true","-Dspring.profiles.active=prod","-Dlog4j2.formatMsgNoLookups=true","-jar","/app.jar"]
