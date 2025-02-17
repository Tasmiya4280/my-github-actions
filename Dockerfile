FROM openjdk:8-jre-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy all project files into the Docker image
COPY . .

# Grant execute permission for gradlew
RUN chmod +x gradlew

# Optionally, switch to root user to ensure permission to execute the build
USER root

# Build the application
RUN ./gradlew build

# Expose the application port
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "build/libs/my-app-1.0-SNAPSHOT.jar"]
