FROM ubuntu:latest
RUN apt update
RUN apt install default-jdk -y
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.34/bin/apache-tomcat-10.1.34.tar.gz .
RUN tar -xf apache-tomcat-10.1.34.tar.gz
RUN mkdir /opt/tomcat
RUN mv /apache-tomcat-10.1.34/* /opt/tomcat
ADD https://coffee-shop-17-12-2024.s3.us-east-1.amazonaws.com/Coffee-shop.war .
RUN mv /Coffee-shop.war /opt/tomcat/webapps
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
