FROM centos:latest
MAINTAINER cpbarik.mca@gmail.com
RUN yum install -y httpd \
  zip \
  unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page263/awesome.zip /var/www/html
WORKDIR /var/www/html
RUN unzip awesome.zip
RUN cp -rvf awesome/* .
RUN rm -rf awesome awesome.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
