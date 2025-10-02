
FROM tomcat:9.0
RUN rm -rf /usr/local/tomcat/webapps/maven-web-application.war
COPY target/maven-web-application*.war /usr/local/tomcat/webapps/maven-web-application.war
EXPOSE 8081
CMD ["catalina.sh", "run"]
