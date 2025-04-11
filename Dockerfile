# Use an official OpenJDK runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the built WAR file into the container
COPY target/OnlineBookStore.war /app/OnlineBookStore.war

# Expose the port that the application will run on
EXPOSE 8080

# Command to run the WAR file
CMD ["java", "-jar", "/app/OnlineBookStore.war"]