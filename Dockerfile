FROM tomcat:9-jdk11
COPY /var/lib/jenkins/workspace/project1/target/maven-web-application.war /usr/local/tomcat/webapps/
EXPOSE 8080

