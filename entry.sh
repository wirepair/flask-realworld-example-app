#!/bin/sh

cd /var/www/

flask db init
flask db migrate
flask db upgrade
nginx -s reload &
flask run --with-threads --host=0.0.0.0
