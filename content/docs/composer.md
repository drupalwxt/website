+++
draft = false
title = "Composer workflow for Drupal 8"
description="Composer workflow for Drupal 8."
language = "en"
tags = [
    "docs",
    "faq",
    "wxt",
]
date = "2019-06-03T15:10:50-05:00"
type = "single"
+++

> **Note**: The following guide is largely just a high level overview for Drupal 8 WxT installations.

## Overview

`WxT` strictly adheres to a Composer-based workflow and tries to follow the best
practices laid out by the broader Drupal community. For more information on the
benefits of this workflow please consult the official documentation provided in
the link below:

* [Using composer to manage Drupal][composer-drupal]

Composer also helps facilitate a more security oriented approach whether
packaging or deploying a site. In a `WxT` site the only code in the repository
will be custom code and everything else is defined as a dependency. This makes
clear what audit-able surface is.

For more information on this please see a recent talk given at `DrupalGov`:

* [A blueprint for a secure Drupal 8 platform and build process with composer][composer-secure]

## Composer Project Templates

Reading the provided documentation we are quickly introduced to the methodology
of leveraging **composer templates as blueprints** for managing various Drupal
projects. These templates help to provide quick installation of Drupal and / or
Drupal distributions through issuing just a few composer commands.

First you need to [install composer][composer-install].

> Note: The instructions below refer to the [global composer installation][composer-global].
You might need to replace `composer` with `php composer.phar` (or similar) for your setup.

After that you can create the appropriate project:

### Drupal (standalone)

```sh
composer create-project drupal-composer/drupal-project site-name
```

### Lightning (distribution)

```sh
composer create-project acquia/lightning-project site-name
```

### WxT (distribution) <span class="fa fa-star"></span>

```sh
composer create-project drupalwxt/wxt-project:8.x-dev site-name
```

You will notice that `WxT` has its own composer project template listed above
to help you quickly onboard to our distribution. An example was also given of
the popular Lightning framework to which `WxT` extends from. Relevant links are
provided below for each of the composer projects.

* [Composer template for Drupal projects][drupal-project]
* [Composer template for Lightning projects][lightning-project]
* [Composer template for WxT projects][wxt-project] <span class="fa fa-star"></span>

> Note: The `composer create-project` command passes ownership of all files to the
project that is created. You should create a new git repository, and commit
all files not excluded by the .gitignore file.

## Maintenance

Composer will create a new directory called `site-name` containing a `html`
directory with a full `WxT` codebase inside. You can now simply install like
you would any other Drupal site.

List of common commands are as follows:

| Task                                            | Composer                                               |
|-------------------------------------------------|--------------------------------------------------------|
| Latest version of a contributed project         | ```composer require drupal/PROJECT_NAME:8.*```         |
| Specific version of a contributed project       | ```composer require drupal/PROJECT_NAME:8.1.0-beta5``` |
| Updating all projects including Drupal Core     | ```composer update```                                  |
| Updating a single contributed project           | ```composer update drupal/PROJECT_NAME```              |
| Updating Drupal Core exclusively                | ```composer update drupal/core```                      |

> **Note**: Remember Composer, unlike Drush, is a **dependency manager**. If
module `foo version: 1.0.0` depends on `bar version: 3.2.0`, Composer will not
let you update bar to `3.3.0` (or downgrade it to `3.1.0` respectively).

## Source Control

If you peek at the `.gitignore` we and other drupal projects provide, you'll
immediately notice that certain directories, including all contributed projects,
are excluded from source control. In fact in most ``Composer`` project's (like
this one), you should never commit your installed dependencies to source
control.

When you set up the project, `Composer` will create a file called
`composer.lock`, which is a list of which dependencies were installed, and in
which versions. Commit `composer.lock` to source control! Then, when your
colleagues want to spin up their own copies of the project, all they'll have to
do is run composer install, which will install the correct versions of
everything in `composer.lock`.

## What does the template do?

When installing the given `composer.json` some tasks are taken care of:

* Drupal will be installed in the `html` directory
* Autoloader is implemented to use the generated composer autoloader in
`vendor/autoload.php`, instead of the one provided by Drupal
(`html/vendor/autoload.php`)
* Modules (packages type `drupal-module`) will be placed in
`html/modules/contrib/`
* Theme (packages type `drupal-theme`) will be placed in
`html/themes/contrib/`
* Profiles (packages type `drupal-profile`) will be placed in
`html/profiles/contrib/`
* Creates default writable versions of `settings.php` and `services.yml`.
* Creates `html/sites/default/files` directory
* Latest version of `Drush` is installed locally for use at `vendor/bin/drush`
* Latest version of `DrupalConsole` is installed locally for use at
`vendor/bin/drupal`

## Updating Drupal Core

This project will attempt to keep all of your Drupal Core files up-to-date; the
project [drupal-composer/drupal-scaffold][drupal-scaffold]
is used to ensure that your scaffold files are updated every time drupal/core is
updated. If you customize any of the "scaffolding" files (commonly .htaccess),
you may need to merge conflicts if any of your modfied files are updated in a
new release of Drupal core.

## Structure

```sh
    ├── scripts/
    │   └── ScriptHandler.php           --> Additional scripts for composer
    ├── html/                           --> web server root directory
    ├── files_private/                  --> files ignored by git
    ├── drush/
    ├── composer.lock                   --> dependency manager
    ├── composer.json                   --> pinned dependencies
    ├── README.md
    ├── Makefile
    ├── .travis.yml
    ├── .gitlab-ci.yml
    └── vendor/                         --> composer packages
```

## Additional Resources

- [Official Docs](https://getcomposer.org/doc/)
- [Troubleshooting composer][composer-troubleshooting]
- [Using Composer][composer-using]
- [Lightning + Composer][composer-lightning]
- [Composer Parallel Install][composer-parallel]


[composer-drupal]:              https://www.drupal.org/docs/develop/using-composer/using-composer-to-manage-drupal-site-dependencies
[composer-install]:             https://getcomposer.org/doc/00-intro.md#installation-linux-unix-osx
[composer-global]:              https://getcomposer.org/doc/00-intro.md#globally
[composer-lightning]:           https://lightning.acquia.com/installation-instructions
[composer-parallel]:            https://github.com/hirak/prestissimo
[composer-secure]:              https://www.youtube.com/watch?v=g_EO-3dEbio
[composer-troubleshooting]:     https://www.drupal.org/docs/develop/using-composer/troubleshooting-composer
[composer-using]:               https://www.drupal.org/docs/develop/using-composer
[ci-gitlab-ci]:                 .gitlab-ci.yml
[ci-travis-ci]:                 .travis.yml
[deploy-od]:                    https://github.com/open-data/site-open-data/blob/8.x/docker/deploy.php
[deploy-wxt]:                   https://github.com/drupalwxt/site-wxt/blob/8.x/docker/deploy.php
[deployer]:                     https://github.com/deployphp/deployer
[drupal-project]:               https://github.com/drupal-composer/drupal-project
[drupal-scaffold]:              https://github.com/drupal-composer/drupal-scaffold
[lightning-project]:            https://github.com/acquia/lightning-project
[site-open-data]:               https://github.com/open-data/site-open-data
[site-wxt]:                     https://github.com/drupalwxt/site-wxt
[travisci-site-open-data]:      https://travis-ci.org/open-data/site-open-data
[travisci-site-wxt]:            https://travis-ci.org/drupalwxt/site-wxt
[wxt-project]:                  https://github.com/drupalwxt/wxt-project
