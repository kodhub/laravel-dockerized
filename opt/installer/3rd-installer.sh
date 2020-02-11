#!/usr/bin/env bash
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

cat /etc/crontab/crontab.conf > /etc/cron.d/crontab.tpl

while IFS="" read -r p || [[ -n "$p" ]]
do
  printf '%s\n' "$p"
    (crontab -l && echo "$p") | crontab -
done < /etc/cron.d/crontab.tpl

echo "Moved crontab conf..."

