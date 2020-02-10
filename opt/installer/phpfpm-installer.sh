echo "PHP-FPM installer starting..."

export DEBIAN_FRONTEND=noninteractive

apt install -y \
  libcurl4 \
  php7.2-fpm \
  php7.2-curl \
  php7.2-cli \
  php7.2-mysql \
  php7.2-gd \
  php7.2-xsl \
  php7.2-json \
  php7.2-intl \
  php-pear \
  php7.2-dev \
  php7.2-common \
  php7.2-mbstring \
  php7.2-zip \
  php-soap

echo "PHP-FPM installer completed..."

echo "Composer installer starting..."

curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

composer --version

mkdir -p /run/php

echo "Composer installer completed..."
