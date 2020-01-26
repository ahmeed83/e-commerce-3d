FROM adoptopenjdk/openjdk12:latest
VOLUME /tmp
ADD target/webshop3d-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "app.jar"]