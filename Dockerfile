# Stage 1: Build the WAR file using Maven
FROM maven:3.6.3-jdk-11 AS build

# Set the working directory to /app
WORKDIR /app

# Copy the pom.xml and source code to the /app directory
COPY . .

# Run the Maven build
RUN mvn clean package

# Stage 2: Deploy the WAR file to Tomcat
FROM tomcat:9-jdk11

LABEL maintainer="sindhu"

# Copy the WAR file from the build stage to the Tomcat webapps directory
COPY --from=build /app/target/maven-web-application.war /usr/local/tomcat/webapps/

# Expose port 8080
EXPOSE 8080

# Start the Tomcat server
CMD ["catalina.sh", "run"]
