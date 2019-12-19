#!/bin/bash

RUN composer install
RUN cp .env.example .env
RUN php artisan key:generate
RUN php artisan config:cache
RUN php artisan migrate 
php artisan migrate
php-fpm