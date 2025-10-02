
FROM tomcat:9.0.109
RUN rm -rf /opt/apache-tomcat-9.0.109/webapps/maven-web-application.war
COPY /var/lib/jenkins/workspace/target/maven-web-application*.war /opt/apache-tomcat-9.0.109/webapps/maven-web-application.war
EXPOSE 8081
CMD ["catalina.sh", "run"]
