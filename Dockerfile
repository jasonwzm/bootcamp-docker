FROM registry.access.redhat.com/jboss-webserver-3/webserver30-tomcat7-openshift:1.2

EXPOSE 8080 8888

RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/ROOT.war -o /usr/local/tomcat/webapps/ROOT.war

CMD ["catalina.sh", "run"]
