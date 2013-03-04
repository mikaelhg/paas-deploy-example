# PaaS deployment example: Cloud Foundry

## 1\. Create the application

    mvn clean package
    vmc push
    # vmc map springmvc-example cloudfoundry.paas.gueck.com

## 2\. Update the application

    mvn clean package && vmc update --path .

Unfortunately any change to the ``manifest.yml`` file requires destroying and recreating the application.
