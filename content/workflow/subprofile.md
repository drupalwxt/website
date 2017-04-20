+++
draft = false
title = "Sub Installation Profile"
description="Sub Installation Profile Drupal WxT."
language = "en"
tags = [
    "profile",
]
date = "2017-04-18T08:30:00-05:00"
type = "workflow"
menu = ["workflow"]
+++

## WxT sub installation profiles

`WxT` like its base framework `Lightning` includes the ability to create
sub-profiles that are based on the default `WxT` distribution profile. Making
a sub-profile allows you to customize the installation process to meet one or
more of your specific needs while retaining / customizing the `WxT` defaults.

If any of the following statements are true, then you should consider creating
a sub-profile of `WxT`:

* Ability to prevent / override some (sub)component of `WxT` from being
installed
* Ability to enable additional modules, themes, or configuration during install
* Ability customize the look and feel of the installation process
* Ability to build a distribution that offloads the `Web Experience Toolkit`
theme(s) / plugins and related libraries to `WxT`

> Note: If all you require is to just work with `WxT` and add additional
modules post installation.

## Implementations

The `Open Data` repository listed below is a good example of a sub installatin
profile of `WxT` gaining all of its + `Lightning`'s respective functionality as
an immediate benefit.

- [site-open-data][site-open-data]

Hopefully soon the [WxT composer project template generator][wxt-project]
will incorporate support for generating sub installation profiles. Until that
time the following skeleton repo is provided:

- [skel][skel]


[site-open-data]:     https://github.com/open-data/site-open-data
[skel]:               https://github.com/drupalwxt/skel
[wxt-project]:        https://github.com/drupalwxt/wxt-project
