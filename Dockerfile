FROM tomcat:8.0
LABEL maintainer="drj@google.com"

ADD sample.war /usr/local/tomcat/webapps/

ADD example-tap/build/libs/example-tap-1.1.war /usr/local/tomcat/webapps/tap.war

ADD tomcat-users.xml /usr/local/tomcat/conf

EXPOSE 8080
CMD ["catalina.sh", "run"]
