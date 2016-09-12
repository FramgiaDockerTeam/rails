#!/bin/bash

service mysql start
service mongodb start

sleep 5

chmod -R 777 /home/app/tmp/

chmod -R 777 /home/app/log/

cd /home/app/ && bundle install && rake db:create && rake db:migrate

exec $@