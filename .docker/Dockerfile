FROM ubuntu:latest

USER root

# COPY OPT FOLDER
RUN mkdir -p /opt/docker/system
COPY ./opt /opt/docker/system
RUN chmod -R 755 /opt/docker/*

# COPY CONF FOLDER
COPY ./conf /etc


ENTRYPOINT ["/bin/sh", "/opt/docker/system/start.sh"]

### PHP-FPM INSTALLER
#RUN DEBIAN_FRONTEND=noninteractive
#RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
#RUN apt install -y \
#        libcurl4 \
#        php7.2-fpm \
#        php7.2-curl \
#        php7.2-cli \
#        php7.2-mysql \
#        php7.2-gd \
#        php7.2-xsl \
#        php7.2-json \
#        php7.2-intl \
#        php-pear \
#        php7.2-dev \
#        php7.2-common \
#        php7.2-mbstring \
#        php7.2-zip \
#        php-soap
#
## install composer
#RUN curl -sS https://getcomposer.org/installer | php && \
#    mv composer.phar /usr/local/bin/composer && \
#    printf "\nPATH=\"~/.composer/vendor/bin:\$PATH\"\n" | tee -a ~/.bashrc
#