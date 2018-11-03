# TheHoneydew

[![Code Climate](https://codeclimate.com/github/IgorPolyakov/TheHoneydew.svg)](https://codeclimate.com/github/IgorPolyakov/TheHoneydew)
[![Build Status](https://travis-ci.org/IgorPolyakov/TheHoneydew.svg?branch=master)](https://travis-ci.org/IgorPolyakov/TheHoneydew)
[![Coverage Status](https://coveralls.io/repos/github/IgorPolyakov/TheHoneydew/badge.svg)](https://coveralls.io/github/IgorPolyakov/TheHoneydew)

## HOW TO

Run [developer environment](https://github.com/IgorPolyakov/TheHoneydew/wiki/Run-develop-env).

Run [production environment](https://github.com/IgorPolyakov/TheHoneydew/wiki/Run-production-env).

Deploy on Heroku.

```
$ heroku login
$ heroku create
$ git push heroku master
$ heroku run rake db:migrate
$ heroku run rake db:seed
$ heroku open
```

## Locale

Check is everything [OK](https://github.com/glebm/i18n-tasks)?
```
$ i18n-tasks health
```

## Changelog

All changes you can see [here](https://github.com/IgorPolyakov/TheHoneydew/blob/master/CHANGELOG.md).

## Versioning

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/IgorPolyakov/TheHoneydew/releases).

## Authors

*   **Igor Polyakov** - *initial work* - [IgorPolyakov](https://github.com/IgorPolyakov)
*   **Selivanov Daniil** - *back end & security* - [Layz1337](https://github.com/Layz1337)
*   **Milankovich Margarita** - *back end & database* - [Vexarr](https://github.com/Vexarr)
*   **Malkova Maria** - *front end* - [stelse](https://github.com/stelse)
*   **Andreev Maxim** - *test & locale* - [555Shaman555](https://github.com/555Shaman555)

See also the list of [contributors](https://github.com/IgorPolyakov/TheHoneydew/graphs/contributors) who participated in this project.

## License

TheHoneydew is released under the [MIT License](https://raw.githubusercontent.com/IgorPolyakov/TheHoneydew/master/LICENSE.md).
