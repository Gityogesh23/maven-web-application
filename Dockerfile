#------------docker-multi-stage-build---------------
FROM maven:3.9-eclipse-temurin-8 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -DskipTests
#---------Runtime-------------------------------------
FROM tomcat:9-jre8-temurin
RUN rm -rf /usr/local/tomcat/webapps/*
COPY  --from=build /app/target/maven-web-application.war usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.run","run"]
# FROM tomcat:9.0.109
# RUN rm -rf /usr/local/tomcat/webapps/maven-web-application
# COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
# EXPOSE 8081
# CMD ["catalina.sh", "run"]
# FROM tomcat:9.0-jdk17-temurin
# #COPY target/maven-web-application*.war /usr/local/tomcat/webapps/ROOT.war

# COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war
