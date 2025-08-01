FROM maven:3.9.6-eclipse-temurin-17 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

FROM amazoncorretto:17-alpine
LABEL maintainer="Harxen" email="harold.m.kengne@gmail.com"
WORKDIR /paymybuddy
 
COPY target/*.jar paymybuddy.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "paymybuddy.jar"]
