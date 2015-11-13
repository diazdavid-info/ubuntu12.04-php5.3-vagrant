#!/bin/bash

echo "Configuration xdebug"
cat /etc/php5/conf.d/xdebug.ini.back > /etc/php5/conf.d/xdebug.ini
echo "[xdebug]" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.remote_enable=on" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.remote_connect_back = on" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.default_enable=on" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.remote_autostart=on" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.remote_port=9000" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.remote_host=localhost" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.profiler_enable_trigger=1" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.profiler_output_name=xdebug-profile-cachegrind.out-%H-%R" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.var_display_max_children = 128" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.var_display_max_data = 2048" >> /etc/php5/conf.d/xdebug.ini
echo "xdebug.var_display_max_depth = 128" >> /etc/php5/conf.d/xdebug.ini
