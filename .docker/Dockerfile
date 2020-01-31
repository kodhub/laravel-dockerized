FROM ubuntu:latest

USER root

# UPDATE
RUN apt update

# INSTALL
RUN apt install nginx -y
RUN apt install supervisor -y
RUN apt install vim curl -y
RUN apt install cron -y

COPY ./conf/supervisor/ /etc/supervisor

COPY ./conf/crontab/crontab.conf  /tmp/crontab.conf

RUN cat /tmp/crontab.conf > /var/spool/cron/crontabs/root

# COPY SCRIPT
RUN mkdir -p /opt/bash
ADD ./opt/start.sh /opt/start.sh
RUN chmod 755 /opt/start.sh

# INIT SCRIPT
ENTRYPOINT ["/bin/sh", "/opt/start.sh"]

# EXPOSE
EXPOSE 80 443