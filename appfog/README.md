# PaaS deployment example: AppFog

1. Create the application


    mvn clean package

    af push

    af map springmvc-example appfog.paas.gueck.com

2. Update the application


    mvn clean package && af update --path .

Unfortunately any change to the ``manifest.yml`` file requires destroying and recreating the application.
