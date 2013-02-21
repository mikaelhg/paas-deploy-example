#!/usr/bin/bash

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

java -Xmx256m -Xms256m -XX:+UseCompressedOops \
    -Djavax.servlet.request.encoding=UTF-8 -Dfile.encoding=UTF-8 \
    -jar jetty-runner.jar \
    --port ${VCAP_APP_PORT} springmvc-example.jar
