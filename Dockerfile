FROM ubuntu:latest
MAINTAINER shreyas
RUN apt-get update -y && apt-get upgrade -y && apt-get install openjdk-8-jdk -y 
WORKDIR /sBoot/target/spring-boot-rest-example-0.5.0.war
EXPOSE 8091
EXPOSE 8090
CMD java -jar -Dspring.profiles.active=test /sBoot/target/spring-boot-rest-example-0.5.0.war