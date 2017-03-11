#!/bin/sh
#########################################################################
# File Name: launch.sh
# Author: shootsoft
# Email:  shootsoft#qq.com
# Version:
# Created Time: 2017/03/11
#########################################################################

# Install libraries for 
cd /data/www/ && composer install --optimize-autoloader >> /var/log/composer.log

# Launch extensions, supervisord
sh /start.sh