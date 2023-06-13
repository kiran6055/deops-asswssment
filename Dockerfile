
FROM        openjdk:8
RUN         mkdir /app
WORKDIR     /myapp
COPY        my-app/target/my-app-0.0.1-SNAPSHOT.jar /app/my-app.jar
EXPOSE      8080
ENTRYPOINT  [  "java", "-jar", "my-app.jar" ]