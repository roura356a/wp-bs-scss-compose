ARG env=prod

FROM wordpress:latest

ADD code /var/www/html

EXPOSE 8080
