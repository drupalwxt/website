+++
draft = false
title = "Composer FAQ"
description="Frequently asked questions for Composer workflow."
language = "en"
tags = [
    "docs",
    "faq",
    "wxt",
]
date = "2019-06-03T15:10:50-05:00"
type = "single"
+++

## Should I commit the contributed modules downloaded?

Composer strongly recommends **against**. However, while they provide
[argumentation against][composer-dep] there are also known workarounds if a
project decides to do it anyway.

## Should I commit the scaffolding files?

The [drupal-scaffold][drupal-scaffold] plugin can download the scaffold files
(like index.php, update.php, etc) to the `html` directory of your project. If
you have not customized those files you could choose to not check them into
your version control system. If that is the case for your project it might be
convenient to automatically run the `drupal-scaffold` plugin after every
install or update of your project. You can achieve that by registering
`@drupal-scaffold` as post-install and post-update command in your
`composer.json`:

```json
"scripts": {
    "drupal-scaffold": "DrupalComposer\\DrupalScaffold\\Plugin::scaffold",
    "post-install-cmd": [
        "@drupal-scaffold",
        "..."
    ],
    "post-update-cmd": [
        "@drupal-scaffold",
        "..."
    ]
},
```

## How can I apply patches to downloaded modules?

If you need to apply patches (depending on the project being modified, a pull
request is often a better solution), you can do so with the
[composer-patches][composer-patches] plugin.

To add a patch to drupal module foobar insert the patches section in the extra
section of composer.json:
```json
"extra": {
    "patches": {
        "drupal/foobar": {
            "Patch description": "URL to patch"
        }
    }
}
```

[composer-dep]:                 https://getcomposer.org/doc/faqs/should-i-commit-the-dependencies-in-my-vendor-directory.md
[composer-patches]:             https://github.com/cweagans/composer-patches
[drupal-scaffold]:              https://github.com/drupal-composer/drupal-scaffold
