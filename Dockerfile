FROM tomcat:latest
RUN cp -a /user/local/tomcat/webapps.dist/* /user/local/tomcat/wevapps
COPY webapp/target/wenapp.war /user/local/tomcat/webapps
