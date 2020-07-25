#!/bin/sh

cd /var/www/

/usr/local/bin/docker-entrypoint.sh -s &
sleep 10
flask db init
flask db migrate
flask db upgrade
nginx &

flask run --with-threads --host=0.0.0.0
