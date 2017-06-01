# wp-bs-scss-dup

WordPress + Bootstrap + Compass + DUP.

Using the official docker image from Wordpress that includes Debian 8, Apache 2.4 and PHP 5.6.

- wordpress (github.com/docker-library/wordpress)
- bootstrap (github.com/twbs/bootstrap-sass)
- compass (compass-style.org)
- dup (github.com/girvo/dup)


## Requirements

- dup


## Instructions

- Run `rm -rf .git && rm .gitignore && rm readme.md`.
- Customise `PROJECT_NAME` in **.up.json**.
- Run this command if you don't have already `http-proxy` running. `docker run --name=http-proxy -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy`.
- Run `dup init`, then `dup build` and `dup up`.
- Run `dup bash web`.
- Run `npm install` in _wp-content/themes/wp-custom-theme_.
- Customise `PROJECT_NAME`, `PROJECT_URL`, `AUTHOR_URL` and `AUTHOR_NAME` in _sass/style.scss_.
- Don't forget to add your `PROJECT_NAME`.docker to `/etc/hosts`


## Using Compass

You can run `compass watch` in the virtual machine, **config.rb** is located at _src/_.
