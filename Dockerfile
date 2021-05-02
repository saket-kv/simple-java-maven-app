FROM ubuntu:latest
MAINTAINER saket@gmail.com
COPY . /user/home
RUN sudo apt update && sudo apt install openjdk-8-jdk
CMD sudo java app.java
EXPOSE 8089


