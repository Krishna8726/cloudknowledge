FROM centos:latest
MAINTAINER krishna8726
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page279/jack-and-rose.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip jack-and-rose.zip
RUN cp -rvf markups-jack-and-rose/* .
RUN rm -rf __MACOSX markups-jack-and-rose jack-and-rose.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
