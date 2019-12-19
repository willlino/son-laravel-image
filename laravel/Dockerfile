FROM php:7.4.0RC6-fpm-alpine3.10
RUN apk add --no-cache openssl bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

ENV DOCKERIZE_VERSION v0.6.1
RUN wget https://github.com/jwilder/dockerize/releases/download/$DOCKERIZE_VERSION/dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && tar -C /usr/local/bin -xzvf dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz \
    && rm dockerize-alpine-linux-amd64-$DOCKERIZE_VERSION.tar.gz

WORKDIR /var/www
RUN rm -rf /var/www/html

# install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer


# WORKDIR /var/www/laravel


# COPY . /var/www
# RUN composer install
# RUN cp .env.example .env
# RUN php artisan key:generate
# RUN php artisan config:cache
# RUN php artisan migrate 


# COPY laravel /var/www
RUN ln -s public html

WORKDIR /var/www

EXPOSE 9000
# ENTRYPOINT ["php-fpm"]
