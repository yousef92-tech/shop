FROM php:7.3.3-apache
COPY ./php/online-shopping-system .
RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli
VOLUME ./php/online-shopping-system/database/onlineshop.sql:/docker-entrypoint-initdb.d/onlineshop.sql
EXPOSE 80
