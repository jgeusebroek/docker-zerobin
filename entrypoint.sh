#!/bin/sh

addgroup -g ${GID} zerobin && adduser -h /zerobin -s /bin/sh -D -G zerobin -u ${UID} zerobin
touch /var/run/php-fpm.sock

if [ ! -f /zerobin/cfg/conf.ini ]; then
	cp /zerobin/conf.ini.sample /zerobin/cfg/conf.ini
fi

chown -R zerobin:zerobin /zerobin /var/run/php-fpm.sock /var/lib/nginx /tmp
supervisord -c /usr/local/etc/supervisord.conf