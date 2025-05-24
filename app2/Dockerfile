FROM openjdk:17-jdk-slim

WORKDIR .

COPY target/hello-world.jar app.jar

EXPOSE 80

ENTRYPOINT ["java", "-jar", "app.jar"]