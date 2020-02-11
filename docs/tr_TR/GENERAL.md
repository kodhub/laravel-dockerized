# LARAVEL DOCKERIZED

Laravel için basit docker ortamı.

## DESTEKLEDİKLERİ
* nginx
* php-fpm ( v7.2 )
* mysql ( v5.7 )
* redis
* crontab
* supervisor

## KURULUM

Çalıştırmak istediğin laravel projesinin bulunduğu dizinde sırasıyla çalıştırmanız gereklidir.

1- `git clone git@github.com:kodhub/laravel-dockerized.git .docker`

2- `docker-compose up -d --build`

3- `docker exec -it <container-id> bash`

4- Projenize ait kurulum adımları. ( `php artisan migrate --seed` vb.)

## Ayarlar

`.env` dosyasından docker ayağa kalkarken gerekli ayarları düzenleyebilirsiniz. Veritabanı bilgilerinizi vb. projenize göre özelleştirebilirsiniz. 

## CRONTAB AYARLARI

`./conf/crontab/crontab.conf` dosyası üzerinde yeni cron ekleyebilirsiniz.

## MYSQL AYARLARI

`./conf/mysql/*` klasörü container içindeki `/etc/mysql` klasörüne eşitlenmektedir gerekli dosyaları bu klasöre ekleyerek containeri tekrar başlatabilirsiniz..

## NGINX AYARLARI

`./conf/nginx/*` klasörü container içindeki `/etc/nginx` klasörüne eşitlenmektedir gerekli dosyaları bu klasöre ekleyerek containeri tekrar başlatabilirsiniz..

## REDIS AYARLARI

`./conf/redis/*` klasörü container içindeki `/etc/redis` klasörüne eşitlenmektedir gerekli dosyaları bu klasöre ekleyerek containeri tekrar başlatabilirsiniz..

## SUPERVISOR AYARLARI

`./conf/supervisor/*` klasörü container içindeki `/etc/supervisor` klasörüne eşitlenmektedir gerekli dosyaları bu klasöre ekleyerek containeri tekrar başlatabilirsiniz..

## LARAVEL QUEUE DİNLEYİCİSİ EKLEME

`./conf/supervisor/conf.d/laravel.conf` dosyası içerisindeki örnek üzerinden projenize ait  ekstra queue kanallarını ekleyebilirsiniz.
