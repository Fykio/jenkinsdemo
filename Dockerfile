FROM bellsoft/liberica-openjdk-alpine:21
RUN mkdir /app
COPY target/jenkinsdemo-0.0.1-SNAPSHOT.jar /app
ENTRYPOINT [ "java", "-jar", "/app/jenkinsdemo-0.0.1-SNAPSHOT.jar" ]
EXPOSE 7777
