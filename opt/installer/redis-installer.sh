echo "Mysql installer starting..."

apt install redis-server php-redis -y -o Dpkg::Options::="--force-confold"
