echo "Laravel installer starting..."

cd /var/www

if [ -f ./htdocs/.env ] || [ -f ./htdocs/vendor/autoload.php ]; then
  php ./htdocs/artisan --version
else
  rm -rf ./htdocs
  echo "Install laravel..."
  composer create-project laravel/laravel --prefer-dist htdocs
  echo "Installed laravel"
fi
