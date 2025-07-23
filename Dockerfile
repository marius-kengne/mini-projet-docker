FROM amazoncorretto:17-alpine
LABEL maintainer="Harxen" email="harold.m.kengne@gmail.com"
WORKDIR /paymybuddy
 
COPY target/*.jar paymybuddy.jar
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "paymybuddy.jar"]
