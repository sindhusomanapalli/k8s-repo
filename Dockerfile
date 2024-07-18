FROM tomcat:9-jdk11
LABEL maintainer="sindhu"
RUN sudo apt update -y && sudo apt install maven -y
RUN mvn clean package
COPY /target/maven-web-application.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
