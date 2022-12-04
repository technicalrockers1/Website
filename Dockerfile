
FROM centos:latest
RUN yum install java -y
RUN mkdir /opt/tomcat
ADD https://downloads.apache.org/tomcat/tomcat-9/v9.0.69/bin/apache-tomcat-9.0.69.tar.gz.sha512
RUN tar -xvzf apache-tomcat-9.0.69.tar.gz
RUN mv apache-tomcat-9.0.69/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh",run"]
ADD . /var/www/html
