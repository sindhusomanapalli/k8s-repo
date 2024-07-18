FROM tomcat:9-jdk11
MAINTAINER sindhu
RUN sudo apt update -y && sudo apt install maven -y
WORKDIR /app
RUN mvn clean package
COPY /app/target/maven-web-application.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD ["catalina.sh", "run"]
