# PaaS deployment example: CloudBees

Currently using the commandline deployer:

    ${CLOUDBEES_HOME}/bees app:deploy -a springmvc-example -t tomcat7 \
         -Rjava_version=1.7 -RJAVA_OPTS="-Djavax.servlet.request.encoding=UTF-8 -Dfile.encoding=UTF-8" \
         target/classes/springmvc-example.war

Will experiment with the Maven deployment plugin as well.
