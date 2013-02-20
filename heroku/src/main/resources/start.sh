#!/usr/bin/bash

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

REGEX='postgres://(.*):(.*)@(.*)/(.*)'

if [[ ${DATABASE_URL} =~ ${REGEX} ]]; then
    PG_USERNAME=${BASH_REMATCH[1]}
    PG_PASSWORD=${BASH_REMATCH[2]}
    PG_HOST=${BASH_REMATCH[3]}
    PG_DATABASE=${BASH_REMATCH[4]}
    JDBC_URL="jdbc:postgresql://${PG_HOST}/${PG_DATABASE}?username=${PG_USERNAME}&password=${PG_PASSWORD}"
fi


java -Xmx512m -Xms512m -XX:+UseCompressedOops \
    -Djavax.servlet.request.encoding=UTF-8 -Dfile.encoding=UTF-8 \
    -Dspring.profiles.active=postgresql \
    -Ddb.url=${JDBC_URL} \
    -Ddb.user=${PG_USERNAME} -Ddb.password=${PG_PASSWORD} \
    -jar target/*-war-exec.jar --httpPort ${PORT}
