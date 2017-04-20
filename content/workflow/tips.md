+++
draft = false
title = "Composer tips for Drupal"
description="Tips for managing Drupal with Composer."
language = "en"
tags = [
    "tips",
]
date = "2017-04-18T08:30:00-05:00"
type = "workflow"
menu = ["workflow"]
+++

## Version constraints

*Note on version constraints*:

* <code>`~`</code> (tilde)
* <code>`^`</code> (caret)

While these constraints are both fairly similar in that they tell composer to
update to a newer version. The `~` constraints is more strict in that it keeps
to the same minor release. The `^` on the other hand allows for any new version
up to and including the next major release.

See this following articles for more details:

* [Tilde and caret version constraints in Composer][constraints]
* [Prefer carat over tilde in composer.json][constraint_caret]

## Adding a contributed module

```sh
composer require drupal/search_api_solr:^1.0-beta2
```

The preceding command can be parsed as download the
[search_api_solr][sapi_solr] module to my codebase and ensure that the version
is the latest release in the `8.x-1.x` branch greater than or including the
`1.0` version. Additionally the [Solarium][solarium] [solr][solr] client
library has been downloaded as well since remember `Composer` is a dependency
manager.

## Adding a dev version of a contributed module

Occasionally you come into the situation where you need to use a in-development
version of a module. The format for doing this in Drupal can be done by
following the `dev-[branch]#[SHA]` version constraint format. For instance, to
retrieve the the `search_api_solr_datasource` module at a specific commit:

```sh
composer require drupal/search_api_solr_datasource:dev-1.x#2ea53ca
```

## Turn off xDebug

You absolutely shouldn't ignore the warning `Composer` gives you and turn off
xDebug. If xDebug is enabled it has a **significant** impact on both the
performance and how long a command will take. It is not unheard of
`composer update` taking up to 10 mins when without xDebug it is only 2 minute.

```
sudo php5dismod -s cli xdebug
```

[constraints]:          https://getcomposer.org/doc/articles/versions.md#next-significant-release-operators
[constraint_caret]:     https://www.drupal.org/node/2769841
[sapi_solr]:            https://www.drupal.org/project/search_api_solr
[solarium]:             https://github.com/solariumphp/solarium
[solr]:                 http://lucene.apache.org/solr/
