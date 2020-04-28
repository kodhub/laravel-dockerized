#!/usr/bin/env bash
echo "PHP-FPM installer starting..."

export DEBIAN_FRONTEND=noninteractive

echo "deneme";

apt install software-properties-common -y
add-apt-repository ppa:ondrej/php
apt update

apt install -y \
  libcurl4 \
  php7.4-fpm \
  php7.4-curl \
  php7.4-cli \
  php7.4-mysql \
  php7.4-gd \
  php7.4-xsl \
  php7.4-json \
  php7.4-intl \
  php-pear \
  php7.4-dev \
  php7.4-common \
  php7.4-mbstring \
  php7.4-zip \
  php-soap

php -v

echo "PHP-FPM installer completed..."

echo "Composer installer starting..."

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

composer --version

mkdir -p /run/php

echo "Composer installer completed..."
