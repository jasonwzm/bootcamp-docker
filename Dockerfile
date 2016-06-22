FROM tomcat:8.0.20-jre8

ENV CATALINA_HOME /usr/local/tomcat

RUN groupadd -r tomcat && \
	useradd -g tomcat -d ${CATALINA_HOME} -s /sbin/nologin  -c "Tomcat user" tomcat && \
	chown -R tomcat:tomcat ${CATALINA_HOME}

EXPOSE 8080

USER tomcat

RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/ROOT.war -o /usr/local/tomcat/webapps/ROOT.war
