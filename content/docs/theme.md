+++
draft = false
title = "Theme Workflow"
description="Documentation about the theme workflow."
language = "en"
tags = [
    "docs",
    "wxt",
]
date = "2019-06-03T15:10:50-05:00"
type = "single"
+++

> Sub-themes are just like any other theme, with one difference: They inherit the parent theme's resources. There are no limits on the chaining capabilities connecting sub-themes for their parents. A sub-theme can be a child of another sub-theme, and it can be branched and organized however you see fit.

## Background

Drupal WxT includes [WxT Bootstrap][wxt_bootstrap] which is a a modern, component based and accessible sub-theme powered by the [Bootstrap][bootstrap] base theme.

The goal of this theme is to provide complete integration with the [WET-BOEW][wetboew] jQuery Framework.

## Preferred Workflow

One of the questions we get asked is whether it is better to work with the [WxT Bootstrap][wxt_bootstrap] theme directly or create a child.

The answer is it usually is best to create you own sub-theme for departmental customizations and use WxT Bootstrap as the parent theme from which to inherit from.

The following is an example of how the Open Data site does this with their own sub-theme called [Open Data Bootstrap][od_bootstrap].

[bootstrap]:        https://drupal.org/project/bootstrap
[od_bootstrap]:     https://github.com/drupalwxt/od/blob/8.x-2.x/themes/custom/od_bootstrap/
[wetboew]:          https://github.com/wet-boew/wet-boew
[wxt_bootstrap]:    https://github.com/drupalwxt/wxt_bootstrap
