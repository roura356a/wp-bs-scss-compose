FROM wordpress:latest

ARG env=prod

ADD code /var/www/html

EXPOSE 8080
