#!/bin/sh
#########################################################################
# File Name: extension.sh
# Author: shootsoft
# Email:  shootsoft#qq.com
# Version:
# Created Time: 2017/03/11
#########################################################################

# Add extension xdebug
curl -Lk https://pecl.php.net/get/xdebug | gunzip | tar x -C /home/extension && \
    cd /home/extension/xdebug* && \
    /usr/local/php/bin/phpize && \
    ./configure --enable-xdebug --with-php-config=/usr/local/php/bin/php-config && \
    make && make install

# Disable mongodb extension
rm /usr/local/php/etc/php.d/mongodb.ini