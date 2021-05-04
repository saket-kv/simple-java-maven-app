
FROM ubuntu:latest
MAINTAINER saket@gmail.com
RUN apt-get update -y && apt-get install default-jre -y
ADD ./target/my-app-1.0-SNAPSHOT.jar new-example.jar
EXPOSE 8080
CMD java -jar new-example.jar
