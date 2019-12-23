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

This [WxT][wxt] installation profile directly extends from the Lightning Framework created by Acquia to provide developers with a powerful base toolchain upon which to extend. Due to this strict dependency we also align much of our workflow with the best practices established patterns Acquia has provided.

> **Note**: There have been recent changes to Lightning where we now only need to rely on their contributed modules rather then the profile directory. This is something we are currently looking at.

## Lightning

We chose [Lightning][lightning] because of it being the best standard for enterprise authoring in Drupal tightly focused on the user experience in key functional areas.

These areas includes the following:

* Fast on-ramp for Drupal 8 projects
* Streamlined authoring experiences
* Drag and Drop layout tools
* Team-Friendly content workflows
* Security

For most enterprises, Acquia Lightning is seen to have brought a 30% savings in time spent of developing and configuring Drupal 8 projects. That’s because:

* A Drupal 8 distribution with all the necessary functionalities and configurations in place means sites can get ready to launch in a matter of days
* A common framework allows developers to get started right away rather than spending time in evaluating, planning and building a custom framework from scratch, or worrying about cross-functionality between modules
* It includes all the standard best practices for enterprise Drupal development, even incorporating tips and tricks that were previously just part of the collective knowledge of the Drupal community
* It is maintained in close integration with Drupal, with every key improvement in Drupal modules being almost immediately available for use in Lightning

### Lightning vs Drupal Core

| Feature                                                              | Category        | Lightning                                       | Drupal |
|----------------------------------------------------------------------|-----------------|-------------------------------------------------|--------|
| Metatag, Pathauto, Redirect, Token, Search API                       | Bundled Contrib | <span class="glyphicon glyphicon-check"></span> |        |
| Support media types: audio, tweets, instagram posts, videos, images  | Media           | <span class="glyphicon glyphicon-check"></span> |        |
| Bulk image uploads                                                   | Media           | <span class="glyphicon glyphicon-check"></span> |        |
| Image cropping                                                       | Media           | <span class="glyphicon glyphicon-check"></span> |        |
| Slideshows and carousels                                             | Media           | <span class="glyphicon glyphicon-check"></span> |        |
| Default Layout Components                                            | Layout          | <span class="glyphicon glyphicon-check"></span> |        |
| Default content types and layouts                                    | Layout          | <span class="glyphicon glyphicon-check"></span> |        |
| Default workflow states                                              | Workflow        | <span class="glyphicon glyphicon-check"></span> |        |
| Workflow scheduling                                                  | Workflow        | <span class="glyphicon glyphicon-check"></span> |        |
| Moderation sidebar                                                   | Workflow        | <span class="glyphicon glyphicon-check"></span> |        |
| Moderation dashboard                                                 | Workflow        | <span class="glyphicon glyphicon-check"></span> |        |
| Revisions + Landing pages work!                                      | Workflow        | <span class="glyphicon glyphicon-check"></span> |        |
| Autosave                                                             | Workflow        | <span class="glyphicon glyphicon-check"></span> |        |
| Open API docs                                                        | API             | <span class="glyphicon glyphicon-check"></span> |        |
| Oauth                                                                | API             | <span class="glyphicon glyphicon-check"></span> |        |

While Drupal in itself makes all this possible, there is a significant learning curve involved in choosing the right mix of modules that will deliver what an enterprise needs. And that’s where Acquia Lightning comes in.

> **Note**: Another key consideration is that Lightning was built by Acquia which is the #1 contributor to the Drupal project, and provides much of the best practices that WxT follows.

## WxT

Most of the custom modules that the WxT installation profile can be found inside the profile directory. A link to the various core suite of modules can be found below. It should be noted that there is a variety of custom modules in the `wxt_ext` (WxT Extend) folder which are there for enabling more specific functionality in an opt-in capacity.

* [WxT Modules][wxt_modules]
* [WxT Extend][wxt_extend]

> **Note**: [WxT Bootstrap][wxt_bootstrap] and [WxT Library][wxt_library] are distributed separately from the installation profile to allow for any developers to use them in a standalone fashion and not inherit the full weight of a distributon and all of its required depdendencies.

## Contributed Modules

In addition to the modules we directly get as a consequence of our dependency on Lightning additional modules have been added to improve and extend functionality of the WxT distribution.

The complete list of modules can be found in our [composer.json][composer] file.

* **Webform**: An excellent module to build administrative webforms through a point-and-click interface. Amazing support (responds to queries often in less than an hour.
* **Paragraphs**: Fantastic module which helps greatly with architecture and supporting atomic structured content interspersed in creative ways by the content editor.

> **Note**: Even though there might be modules in the contributed directory many of them are not used unless all of the modules in both Lightning and WxT are enabled.

[composer]:       https://git.drupalcode.org/project/wxt/blob/8.x-3.x/composer.json
[lightning]:      https://github.com/acquia/lightning
[phpcs]:          https://github.com/drupalwxt/site-wxt/blob/8.x/docker/conf/phpcs.xml
[wxt]:            https://github.com/drupalwxt/wxt
[wxt_bootstrap]:  https://github.com/drupalwxt/wxt_bootstrap
[wxt_library]:    https://github.com/drupalwxt/wxt_library
[wxt_modules]:    https://github.com/drupalwxt/wxt/tree/8.x-3.x/modules/custom
[wxt_extend]:     https://github.com/drupalwxt/wxt/tree/8.x-3.x/modules/custom/wxt_ext
