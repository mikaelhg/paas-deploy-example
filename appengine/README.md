# PaaS deployment example: Google App Engine

GAE doesn't have Servlet 3.0 support, and there is no way to shoehorn it in.

However, it's on GAE's roadmap, as the first bulletin point, so we'll wait:

https://developers.google.com/appengine/docs/features#Roadmap_Features


    mvn clean package; ~/Downloads/appengine-java-sdk-1.7.5/bin/appcfg.sh update target/classes/