# Use OpenJDK 11
FROM eclipse-temurin:11-jdk-jammy

# Set working directory
WORKDIR /app

# Copy the JAR built by Maven
COPY target/*.jar .

# Expose port your app runs on
EXPOSE 8081

# Command to run the app
ENTRYPOINT ["java", "-jar", "myapp.jar"]