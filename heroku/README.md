# PaaS deployment example: Heroku

1. Create your Heroku application


    heroku apps:create springmvc-example-gumi
    heroku config:add --app springmvc-example-gumi LANG=en_US.UTF-8 LC_ALL=en_US.UTF-8
    heroku config:add --app springmvc-example-gumi JAVA_OPTS="-Djavax.servlet.request.encoding=UTF-8 -Dfile.encoding=UTF-8"

2. Add a PostgreSQL database


    heroku addons:add heroku-postgresql:dev

3. Configure New Relic

4. Deploy, and automate deployment
