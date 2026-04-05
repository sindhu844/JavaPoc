# Use OpenJDK 11
FROM openjdk:11-jre-slim

# Set working directory
WORKDIR /app

# Copy the JAR built by Maven
COPY target/*.jar .

# Expose port your app runs on
EXPOSE 8081

# Command to run the app
ENTRYPOINT ["java", "-jar", "myapp.jar"]