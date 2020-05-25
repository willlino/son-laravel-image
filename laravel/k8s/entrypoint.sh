#!/bin/bash
 
php artisan config:cache
php artisan migrate
chmod 775 -R storage