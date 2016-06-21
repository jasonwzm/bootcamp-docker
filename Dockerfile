FROM registry.access.redhat.com/jboss-eap-6/eap64-openshift

EXPOSE 8080 8888

RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/lab-domain-1.0.jar -o $JBOSS_HOME/standalone/deployments/lab-domain-1.0.jar
RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/lab-dao-1.0.jar -o $JBOSS_HOME/standalone/deployments/lab-dao-1.0.jar
RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/lab-kie-services-1.0.jar -o $JBOSS_HOME/standalone/deployments/lab-kie-services-1.0.jar
RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/lab-knowledge-1.0.jar -o $JBOSS_HOME/standalone/deployments/lab-knowledge-1.0.jar
RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/lab-camel-services-1.0.jar -o $JBOSS_HOME/standalone/deployments/lab-camel-services-1.0.jar
RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/lab-test-harness-1.0.jar -o $JBOSS_HOME/standalone/deployments/lab-test-harness-1.0.jar
RUN curl https://github.com/jasonwzm/bootcamp-binary/blob/master/lab-web-1.0.war -o $JBOSS_HOME/standalone/deployments/lab-web-1.0.war
