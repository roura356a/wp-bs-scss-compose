FROM wordpress:latest

ARG env=prod

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash - \
    && apt-get update && apt-get install -y \
        nodejs \
    # Install Compass
        ruby-sass \
    && gem install compass

ADD code /var/www/html

# Install dependencies
RUN cd wp-content/themes/wp-custom-theme \
    && npm install \
    && rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini

EXPOSE 8080
