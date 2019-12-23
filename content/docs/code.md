+++
draft = false
title = "Coding Standards"
description="Documentation about the coding standards being used."
language = "en"
tags = [
    "docs",
    "wxt",
]
date = "2019-12-23T09:15:15-05:00"
type = "single"
+++

## Background

Drupal WxT complies with the Drupal Coding Standards and runs automated tests on every commit that gets merged into the working repository.

PHP CodeSniffer is executed on our customized [phpcs.xml][phpcs] file which is only slightly different from the one which resides in Drupal core.

## PHPCS

Examples given below are the exact commands being executed in our continuous integration builds running under Travis CI.

The following script is used to scan all of WxT's custom modules:

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
```

The following script is used to scan the WxT profile itself:

```
./docker/bin/phpcs --standard=/var/www/html/core/phpcs.xml \
            --extensions=php,module,inc,install,test,profile,theme \
            --report=full \
            --colors \
            --ignore=*.md \
            -l \
            /var/www/html/profiles/wxt
```

> Note: WxT Bootstrap and WxT Library are similarly scanned though exist outside of the distribution install to facilitate using them standalone.

[phpcs]:        https://github.com/drupalwxt/site-wxt/blob/8.x/docker/conf/phpcs.xml
