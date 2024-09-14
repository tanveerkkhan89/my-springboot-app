# Use the official OpenJDK image as a base
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

ARG JAR_NAME
# Copy the jar file
COPY target/${JAR_NAME} /app/hello-world-app.jar

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/hello-world-app.jar"]
