#!/bin/sh

ln -s /standardebooks.org/web/config/apache/standardebooks.test.conf /etc/apache2/sites-available/
ln -s /standardebooks.org/web/config/php/fpm/standardebooks.org.ini /etc/php/*/cli/conf.d/
ln -s /standardebooks.org/web/config/php/fpm/standardebooks.org.ini /etc/php/*/fpm/conf.d/
ln -s /standardebooks.org/web/config/php/fpm/standardebooks.test.conf /etc/php/*/fpm/pool.d/
a2ensite standardebooks.test
/etc/init.d/apache2 start
service php7.4-fpm restart
tail -f /var/log/apache2/error.log