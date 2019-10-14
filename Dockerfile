FROM centos
LABEL maintainer="viking"
RUN yum install httpd -y
RUN systemctl enable httpd
COPY ./index.html /var/www/html/index.html
CMD [ “/usr/sbin/httpd”, “-D”, “FOREGROUND” ]

