# PaaS deployment example: Google App Engine

GAE doesn't have Servlet 3.0 support, and there is no way to shoehorn it in.

However, it's on GAE's roadmap, as the first bulletin point, so we'll wait:

https://developers.google.com/appengine/docs/features#Roadmap_Features

As a workaround, we're providing a WEB-INF/web.xml file in this project.

http://code.google.com/p/hibernate-gae/issues/detail?id=5

The ``persistence.xml`` and ``hibernate.cfg.xml`` files attempt to work around a GAE classloader bug/feature:
http://code.google.com/p/googleappengine/issues/detail?id=6593

    mvn clean package; ~/Downloads/appengine-java-sdk-1.7.5/bin/appcfg.sh update target/classes/
