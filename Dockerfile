FROM tomcat:8.0.20-jre8

EXPOSE 8080

RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/ROOT.war -o /usr/local/tomcat/webapps/ROOT.war
