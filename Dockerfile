FROM tomcat:9-jdk11
MAINTAINER sindhu
RUN sudo apt update -y
WORKDIR /app
CMD mvn clean package
COPY /app/target/maven-web-application.war /usr/local/tomcat/webapps/
EXPOSE 8080

