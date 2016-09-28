FROM sbeliakou/centos:6.7
MAINTAINER Vitali Shulhach (vitali_shulhach@epam.com)
ENV CATALINA_HOME /opt/tomcat
ENV PATH $PATH:$CATALINA_HOME/bin
RUN yum install -y tar java-1.7.0
RUN curl -O http://apache-mirror.rbc.ru/pub/apache/tomcat/tomcat-7/v7.0.70/bin/apache-tomcat-7.0.70.tar.gz && \
tar -xvzf apache-tomcat-7.0.70.tar.gz && \
rm apache-tomcat*.tar.gz && \
mv apache-tomcat* ${CATALINA_HOME} &&\
chmod +x ${CATALINA_HOME}/bin/*.sh
EXPOSE 8080
ENTRYPOINT catalina.sh run 
