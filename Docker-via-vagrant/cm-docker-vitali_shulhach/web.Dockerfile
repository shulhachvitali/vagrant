FROM sbeliakou/centos:6.7
MAINTAINER Vitali Shulhach (vitali_shulhach@epam.com)
RUN yum install -y nginx
ADD resources/default.conf /etc/nginx/conf.d/
EXPOSE 80
#CMD nginx -g "daemon off;"
ENTRYPOINT nginx
