FROM skiychan/nginx-php7:latest

ENV PATH="/usr/local/php/bin:${PATH}"

# New extensions
COPY docker/extension.sh /data/phpext/extension.sh 

# Composer
RUN curl -sS https://getcomposer.org/installer | php && \
    mv composer.phar /usr/local/bin/composer

# Copy application source code
COPY src/ /data/www/ 
# Log folders for application
RUN mkdir -p /var/log/www/ && chown -R www:www /var/log/www 
# (x) Not sure why this doesn't work
# RUN cd /data/www/ && composer install --optimize-autoloader >> /var/log/composer.log

# Update entrypoint to launch.sh instead of start.sh, because of (x)
ENTRYPOINT ["/launch.sh"]
ADD docker/launch.sh /
RUN chmod +x /launch.sh

EXPOSE 80 443
