# Stage 1: Build using Java 8 and Maven
FROM maven:3.9.0-eclipse-temurin-8 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
# Build the application (.war file)
RUN mvn clean package

# Stage 2: Run using official Tomcat image
FROM tomcat:9.0.115-jdk8-temurin
# Remove default Tomcat apps to secure the server
RUN rm -rf /usr/local/tomcat/webapps/*
# Copy the built .war file from stage 1 to the webapps directory
COPY --from=build /app/target/*.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
# No need for a CMD instruction here; 
# the base tomcat image already contains 'CMD ["catalina.sh", "run"]'
#------------docker-multi-stage-build---------------
# FROM maven:3.9-eclipse-temurin-8 AS build
# WORKDIR /app
# COPY pom.xml .
# COPY src ./src
# RUN mvn clean package -DskipTests
#---------Runtime-------------------------------------
# FROM tomcat:9-jre8-temurin
# RUN rm -rf /usr/local/tomcat/webapps/*
# COPY  --from=build /app/target/maven-web-application.war /usr/local/tomcat/webapps/ROOT.war
# EXPOSE 8080
# CMD ["catalina.sh","run"]

# FROM tomcat:9.0.109
# RUN rm -rf /usr/local/tomcat/webapps/maven-web-application
# COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
# EXPOSE 8081
# CMD ["catalina.sh", "run"]
# FROM tomcat:9.0-jdk17-temurin
# #COPY target/maven-web-application*.war /usr/local/tomcat/webapps/ROOT.war

# COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war
