# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the jar file built by Maven
COPY target/sample-web-app-1.0-SNAPSHOT.jar app.jar

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]
