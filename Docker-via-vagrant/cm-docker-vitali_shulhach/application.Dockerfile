FROM sbeliakou/centos:6.7
MAINTAINER Shulhach Vitali (shulhach_vitali@epam.com)
VOLUME /opt/tomcat/webapps
ADD https://tomcat.apache.org/tomcat-7.0-doc/appdev/sample/sample.war /opt/tomcat/webapps/
CMD sleep infinity
