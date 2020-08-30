FROM openjdk:8-jdk
COPY target/*.jar /opt/app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/opt/app.jar"]
