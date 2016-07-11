#!/bin/bash
yum install java -y && mkdir /home/sources/tomcat && cd /home/sources/tomcat/ && wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-8/v8.5.3/bin/apache-tomcat-8.5.3.tar.gz && tar -xvzf apache-tomcat-8.5.3.tar.gz && cd apache-tomcat-8.5.3/bin
./startup.sh

