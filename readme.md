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

- Run `rm -rf .git && rm .gitignore && readme.md`.
- Customise `PROJECT_NAME` in _.up.json_.
- Run `docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy`.
- Run `dup init`.
- Run `dup build`.
- Run `dup up`.
- Run `npm install` in _code/wp-content/themes/wp-custom-theme_. 
- Customise `PROJECT_NAME`, `PROJECT_URL`, `AUTHOR_URL` and `AUTHOR_NAME` in _sass/style.scss_.
