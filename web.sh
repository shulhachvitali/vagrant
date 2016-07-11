#!/bin/bash
yum install httpd httpd-devel libtool -y
cd /home/sources && wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-connectors/jk/tomcat-connectors-1.2.41-src.tar.gz && tar -xvzf tomcat-connectors-1.2.41-src.tar.gz && cd tomcat-connectors-1.2.41-src/native/
./buildconf.sh && ./configure --with-apxs=/usr/sbin/apxs && make && make install
/home/sources/tomcat-connectors-1.2.41-src/native/apache-2.0/mod_jk.so /etc/httpd/modules/mod_jk.so
cp /home/sources/workers.properties /etc/httpd/conf
echo 'LoadModule jk_module /etc/httpd/modules/mod_jk.so
ServerName localhost
JkWorkersFile /etc/httpd/conf/workers.properties
JkLogFile /home/sources/mod_jk.log
JkLogLevel info
JkLogStampFormat "[%a %b %d %H:%M:%S %Y] "
JkOptions +ForwardKeySize +ForwardURICompat -ForwardDirectories
JkRequestLogFormat "%w %V %T"
<VirtualHost *:80>
ServerName 192.168.25.100
JkMount /* tomcat
</VirtualHost>' >> /etc/httpd/conf/httpd.conf
service httpd start
