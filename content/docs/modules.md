+++
draft = false
title = "Module Selection for Drupal WxT"
description="Documentation about the module selection for Drupal WxT."
language = "en"
tags = [
    "docs",
    "wxt",
]
date = "2019-06-03T15:10:50-05:00"
type = "single"
+++

## Background

This [WxT][wxt] installation profile directly extends from the Lightning Framework created by Acquia to provide developers with a powerful base toolchain upon which to extend. Due to this strict dependency we also align much of our workflow with the best practice established patterns Acquia has provided.

## Lightning

We chose [Lightning][lightning] because of it being the best standard for enterprise authoring in Drupal tightly focused on the user experience in four key functional areas. This includes the following:

* Layout
* Workflow and Content Moderation
* Media
* API First

## WxT

Most of the custom modules that the WxT installation profile can be found inside the profile directory. A link to the various core suite of modules can be found below. It should be noted that there is a variety of custom modules in the wxt_ext (WxT Extend) folder which are there for enabling more specific functionality.

* [WxT Modules][wxt_modules]
* [WxT Extend][wxt_extend]

[WxT Bootstrap][wxt_bootstrap] and [WxT Library][wxt_library] are distributed separately from the installation profile to allow for any developers to use them directly and not accrue the full weight of a distributon and its required depdendencies.

## Contrib Modules

> **Note**: Even though there might be modules in the contributed directory many of them are not used unless all of the advanced features of Lightning and WxT are enabled.

Above and beyond the modules we directly get as a consequence of our dependence on Lightning we have chosen the following suite of modules to improve and extend functionality.

**Webform**: An excellent module to build administrative webforms through a point-and-click interface. Amazing support (responds to queries often in less than an hour.

**Paragraphs**: Fantastic module which helps greatly with architecture and supporting atomic structured content interspersed in creative ways by the content editor.

We will document more of the modules chosen shortly. In the interim, you can also see our [composer.json][composer] file.

[composer]:       https://git.drupalcode.org/project/wxt/blob/8.x-2.x/composer.json#L224
[lightning]:      https://github.com/acquia/lightning
[phpcs]:          https://github.com/drupalwxt/site-wxt/blob/8.x/docker/conf/phpcs.xml
[wxt]:            https://github.com/drupalwxt/wxt
[wxt_bootstrap]:  https://github.com/drupalwxt/wxt_bootstrap
[wxt_library]:    https://github.com/drupalwxt/wxt_library
[wxt_modules]:    https://github.com/drupalwxt/wxt/tree/8.x-2.x/modules/custom
[wxt_extend]:     https://github.com/drupalwxt/wxt/tree/8.x-2.x/modules/custom/wxt_ext
