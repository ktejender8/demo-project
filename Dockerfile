From centos:latest
MAINTAINER ktejender8@gmail.com
RUN yum install -y httpd zip unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/html/www
WORKDIR /var/html/www
RUN unzip kindle.zip
RUN cp -rvf markups-kindle/*
RUN rm -rf _MACOSX markups-kindle kindle.zip
CMD ["usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
