FROM tomcat:9-jdk11
COPY maven-web-application.war /usr/local/tomcat/webapps/
EXPOSE 8080

