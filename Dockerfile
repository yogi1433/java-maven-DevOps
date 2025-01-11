# Use a Tomcat base image with JDK 21
FROM tomcat:10.1.0-jdk17

# Copy the pre-built WAR file from your local machine to Tomcat's webapps directory
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT.war

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]

