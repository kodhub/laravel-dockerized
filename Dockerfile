FROM ubuntu:18.04
USER root

## UPDATE OS ##
RUN apt update

# COPY OPT FOLDER
RUN mkdir -p /opt/docker/system
COPY ./opt /opt/docker/system
RUN chmod -R 755 /opt/docker/*

# COPY CONF FOLDER
COPY ./conf /etc

## INSTALL NGINX
RUN /opt/docker/system/installer/nginx-installer.sh

## INSTALL 3RD APPS
RUN /opt/docker/system/installer/3rd-installer.sh

## PHP INSTALLLER AREA ##
RUN /opt/docker/system/installer/phpfpm-installer.sh

## MYSQL INSTALLER ##
RUN /opt/docker/system/installer/mysql-installer.sh

## REDIS INSTALLER ##
RUN /opt/docker/system/installer/redis-installer.sh

## CHMOD
RUN usermod -u 1000 www-data

## RUN SUPERVISORD
ENTRYPOINT ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]

## SET WORKDIR PATH
WORKDIR /var/www
