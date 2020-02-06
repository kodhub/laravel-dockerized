#!/bin/bash
echo "3RD installer starting..."

apt update

apt install -y \
  curl \
  vim \
  cron \
  git \
  zip \
  unzip \
  supervisor

echo "3RD installer completed..."
