#!/bin/sh

php artisan optimize
php artisan module:migrate --force

exec /usr/bin/supervisord  -c /etc/supervisord.conf
