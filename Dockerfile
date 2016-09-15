FROM lolhens/baseimage-oracle-jdk:latest
MAINTAINER LolHens <pierrekisters@gmail.com>


ENV UNTISICALSERVER_VERSION 1.2.0
ENV UNTISICALSERVER_URL https://github.com/LolHens/UntisIcalServer/releases/download/$UNTISICALSERVER_VERSION/untisicalserver-$UNTISICALSERVER_VERSION.zip


RUN cd "/tmp" \
 && wget "$UNTISICALSERVER_URL" \
 && unzip "untisicalserver-$UNTISICALSERVER_VERSION.zip" \
 && mv "untisicalserver-$UNTISICALSERVER_VERSION" "/usr/local/untisicalserver/" \
 && cleanimage


WORKDIR /usr/local/untisicalserver
CMD bin/untisicalserver


EXPOSE 8080
