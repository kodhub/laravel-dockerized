# Laravel Dockerized
![GitHub release (latest by date including pre-releases)](https://img.shields.io/github/v/release/kodhub/laravel-dockerized?include_prereleases)
![GitHub issues](https://img.shields.io/github/issues-raw/kodhub/laravel-dockerized)
![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/kodhub/laravel-dockerized?color=009fe1)
![GitHub All Releases](https://img.shields.io/github/downloads/kodhub/laravel-dockerized/total?)

Laravel easy docker environment.

[for Magento2](https://github.com/kodhub/magento2-dockerized) 

### Support
   * nginx 
   * php-fpm ( v7.2 )
   * mysql ( v5.7 )
   * redis
   * crontab
   * supervisor
   
### Install on Your Laravel Project

Write the following code to the directory where your project folder is located on the terminal.

1- `git clone git@github.com:kodhub/laravel-dockerized.git .docker`

2- `docker-compose up -d --build`

3- `docker exec -it <container-id> bash`

4- Your project install steps


### Documentation 

[Türkçe dökümana git ->](https://github.com/kodhub/laravel-dockerized/blob/develop/docs/tr_TR/GENERAL.md)
