+++
draft = true
title = "Release Cycle / Updates"
description="Information about the release and how to update the Drupal WxT Distribution between versions."
language = "en"
tags = [
    "architecture",
]
date = "2015-01-13T13:10:52-05:00"
weight = -50
+++

Release Cycle
-------------

The Drupal WxT 7.x-4.x branch will be updated with a stable release approximately
once a month roughly around the 18th. The reason for this is to follow as closely
the Drupal security and core release cycle which is usually aroun the 15th of every month.

## 1.x branch

There will be no more new features integrated into the 7.x-1.x branch after the 1.9 release.
Only security and minor bug fixes will be introduced as requested in the Pull Requests.

## 4.x branch

The Drupal WxT 7.x-4.x will be where the new work on the Bootstrap integration will
begin. The whole process will be outlined in the [roadmap][roadmap] section. The next
release will be our first RC candidate.

A generated list of all 4.x releases with Changelog can be found at the [Releases][releases] page.

Update Process
--------------

<div class="alert alert-info">
  <h4>Important</h4>
  <p>You should only ever upgrade from one version to the next sequential version!</p>
  <p>Consistently check the <a href="https://github.com/wet-boew/wet-boew-drupal/blob/7.x-4.x/CHANGELOG.md">CHANGELOG.md</a> files for up-to-date information on the Drupal WxT releases.</p>
</div>

It is inadvisable to skip versions as certain update hooks expect the existence of certain
files that might not exist in subsequent releases. Additionally do not manually update modules within
distributions! Drupal Distributions contain a carefully selected set of module versions along with
specific patches. You should never update individual modules within a distribution unless you are an
experienced developer. In the end just stick to the release cycle as it will save you a lot of headache.

* First and most importantly backup your database. (e.x. `drush arb`)
* Additionally copy your sites folder by moving it from the virtual host path to a backup location
* Extract the latest stable release of Drupal WxT into your virtual host path
* Copy your sites directory into the new folder
* Run `drush updatedb`
* Run `drush cc all`
* Ensure all of the WetKit Features are in a reverted state
* For customization of default WetKit features so they remain in a reverted state please use: [Features Override][features_override]
* You have now successfully updated!


<!-- Links Referenced -->

[features_override]:  https://drupal.org/project/features_override
[media_overriden]:    https://drupal.org/node/2104193
[releases]:           /wxt/releases
[roadmap]:            /community/roadmap
[wetkit_widgets]:     /wxt/widgets
[wetkit_images]:      /wxt/images
[changelog]:          https://github.com/wet-boew/wet-boew-drupal/blob/7.x-4.x/CHANGELOG.md
[readme]:             https://github.com/wet-boew/wet-boew-drupal/blob/7.x-4.x/README.md
