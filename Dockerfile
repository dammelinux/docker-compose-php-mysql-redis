FROM php:7.4.4-apache
RUN apt-get update && docker-php-ext-install mysqli
RUN pecl install redis-5.1.1 && pecl install xdebug-2.8.1 && docker-php-ext-enable redis xdebug
COPY ./php /var/www/html/
EXPOSE 80
CMD ["apache2-foreground"]
