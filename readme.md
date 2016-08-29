# wp-bs-scss-dup

WordPress + Bootstrap + Compass + DUP

- Wordpress (github.com/docker-library/wordpress)
- Bootstrap (github.com/twbs/bootstrap-sass)
- Compass (compass-style.org)
- DUP (github.com/girvo/dup)

## Requirements

- Node
- DUP
- Compass

## Instructions

- Run `rm -rf .git && rm .gitignore && readme.md`.
- Customise `PROJECT_NAME` in _.up.json_.
- Run `docker run -d -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock:ro jwilder/nginx-proxy`.
- Run `dup init`.
- Run `dup build`.
- Run `dup up`.
- Run `npm install` in _code/wp-content/themes/wp-custom-theme_. 
- Customise `PROJECT_NAME`, `PROJECT_URL`, `AUTHOR_URL` and `AUTHOR_NAME` in _sass/style.scss_.

## TODO

- [ ] Add node.
- [ ] Add compass.
