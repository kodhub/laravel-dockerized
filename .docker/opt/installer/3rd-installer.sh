#!/bin/bash
echo "3RD installer starting..."

apt update && apt install -ym \
  curl \
  vim \
  cron \
  git \
  zip \
  unzip \
  supervisor

echo "3RD installer completed..."

cat /etc/crontab/crontab.conf > /var/spool/cron/crontabs/root

echo "Moved crontab conf..."

