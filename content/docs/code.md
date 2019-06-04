+++
draft = false
title = "Coding Standards"
description="Documentation about the coding standards."
language = "en"
tags = [
    "docs",
    "wxt",
]
date = "2019-06-03T15:10:50-05:00"
type = "single"
+++

## Background

Drupal WxT complies with the Drupal Coding Standards and runs automated tests on ever commit that gets merged into the working directory.

PHP CodeSniffer is executed on our [phpcs.xml][phpcs] file which is only slightly different then the one which resides in Drupal core.

## PHPCS

The following is the literal commands being executed in our continuous integration builds under Travis CI.

```php
./docker/bin/phpcs --standard=/var/www/html/core/phpcs.xml \
            --extensions=php,module,inc,install,test,profile,theme \
            --report=full \
            --colors \
            --ignore=/var/www/html/profiles/wxt/modules/custom/wxt_test \
            --ignore=/var/www/html/modules/custom/wxt_library \
            --ignore=*.css \
            --ignore=*.md \
            --ignore=/var/www/html/*/custom/*/*.info.yml \
            /var/www/html/modules/custom \
            /var/www/html/themes/custom \
            /var/www/html/profiles/wxt/modules/custom

./docker/bin/phpcs --standard=/var/www/html/core/phpcs.xml \
            --extensions=php,module,inc,install,test,profile,theme \
            --report=full \
            --colors \
            --ignore=*.md \
            -l \
            /var/www/html/profiles/wxt
```

> Note: that the whole WxT installation profile is scanned as well as related contribs (WxT Bootstrap, WxT Library) which existed outside the profile repository.

[phpcs]:        https://github.com/drupalwxt/site-wxt/blob/8.x/docker/conf/phpcs.xml
