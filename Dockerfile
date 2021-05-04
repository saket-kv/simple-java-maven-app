FROM ubuntu:latest
MAINTAINER saket@gmail.com
COPY . /user/home
RUN apt update && apt install -y openjdk-8-jdk
EXPOSE 8089


