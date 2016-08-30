FROM wordpress:latest

ARG env=prod

# Install Node
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# Install Compass
RUN apt-get install ruby-sass -y
RUN gem install compass

ADD code /var/www/html

# Install dependencies
RUN cd wp-content/themes/wp-custom-theme && npm install

EXPOSE 8080
