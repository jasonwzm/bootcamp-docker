FROM tomcat:8.0-jre8

EXPOSE 8080 8888

RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/ROOT.war -o /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
