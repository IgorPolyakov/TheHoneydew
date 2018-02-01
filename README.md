# TheHoneydew

[![Code Climate](https://codeclimate.com/github/IgorPolyakov/TheHoneydew.svg)](https://codeclimate.com/github/IgorPolyakov/TheHoneydew)
[![Build Status](https://travis-ci.org/IgorPolyakov/TheHoneydew.svg?branch=master)](https://travis-ci.org/IgorPolyakov/TheHoneydew)
[![Coverage Status](https://coveralls.io/repos/github/IgorPolyakov/TheHoneydew/badge.svg)](https://coveralls.io/github/IgorPolyakov/TheHoneydew)
[![Dependency Status](https://gemnasium.com/badges/github.com/IgorPolyakov/TheHoneydew.svg)](https://gemnasium.com/github.com/IgorPolyakov/TheHoneydew)



## Running

Explain how to run the automated tests for this system
### Build
```
sudo docker-compose build
```
### Run
```
sudo docker-compose up
```

### Run shell
```
sudo docker exec -ti thehoneydew_web_1  /bin/sh

```

## Deploy

### on Heroku

```
heroku login
heroku create
git push heroku master
heroku run rake db:migrate
heroku run rake db:seed
heroku open
```

## Locale

Check is everything [OK](https://github.com/glebm/i18n-tasks)?
```
i18n-tasks health
```

## License

TheHoneydew is released under the [MIT License](https://raw.githubusercontent.com/IgorPolyakov/TheHoneydew/master/LICENSE.md).
