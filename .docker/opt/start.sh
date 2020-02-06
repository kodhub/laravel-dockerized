# INSTALLER RUN
/opt/docker/system/installer/3rd-installer.sh
#/opt/system/installer/nginx-installer.sh
/opt/docker/system/installer/phpfpm-installer.sh
#/opt/system/installer/mysql-installer.sh

# LARAVEL CREATE PROJECT RUN
#/opt/system/installer/laravel-installer.sh
#
# RUN SUPERVISORD
/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
