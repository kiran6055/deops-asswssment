# Use a base image with Java 8
#FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
#WORKDIR /app

# Copy the JAR file to the container
#COPY my-app/target/my-app-0.0.1-SNAPSHOT.jar /app/my-app.jar

# Expose the port that the application listens on
#EXPOSE 8080

# Define the command to run the application
#CMD ["java", "-jar", "my-app.jar"]

FROM        openjdk:8
RUN         mkdir /app
WORKDIR     /myapp
COPY        myapp/target/my-app-0.0.1-SNAPSHOT.jar /app/my-app.jar
EXPOSE      8080
ENTRYPOINT  [  "java", "-jar", "my-app.jar" ]