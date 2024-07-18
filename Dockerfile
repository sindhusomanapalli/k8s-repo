FROM tomcat:9-jdk11
MAINTAINER sindhu
RUN sudo apt update -y && sudo apt install maven -y
WORKDIR /app
CMD mvn clean package
COPY /target/maven-web-application.war /usr/local/tomcat/webapps/
EXPOSE 8080

