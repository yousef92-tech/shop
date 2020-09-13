FROM php:7.3.3-apache
COPY ./php/online-shopping-system .
RUN apt-get update && apt-get upgrade -y
RUN docker-php-ext-install mysqli
EXPOSE 80
