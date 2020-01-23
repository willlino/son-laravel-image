#!/bin/bash

composer install
cp .env.example .env
php artisan key:generate
php artisan config:cache
php artisan migrate
chmod 775 -R storage
# grep APP_KEY .env
php-fpm