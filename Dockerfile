
# FROM tomcat:9.0.109
# RUN rm -rf /usr/local/tomcat/webapps/maven-web-application
# COPY target/maven-web-application.war /usr/local/tomcat/webapps/maven-web-application.war
# EXPOSE 8081
# CMD ["catalina.sh", "run"]
# FROM tomcat:9.0-jdk17-temurin
# #COPY target/maven-web-application*.war /usr/local/tomcat/webapps/ROOT.war

# COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war
