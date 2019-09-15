+++
draft = false
title = "Sub Installation Profile"
description="Sub Installation Profile Drupal WxT."
language = "en"
tags = [
    "docs",
    "wxt",
]
date = "2019-06-03T15:10:50-05:00"
type = "single"
+++

## WxT sub installation profiles

`WxT` like its base framework `Lightning` includes the ability to create sub-profiles that are based on the default `WxT` distribution profile. Making a sub-profile allows you to customize the installation process to meet one or more of your specific needs while retaining / customizing the `WxT` defaults.

If any of the following statements are true, then you should consider creating a sub-profile of `WxT`:

* Ability to prevent / override some (sub)component of `WxT` from being installed
* Ability to enable additional modules, themes, or configuration during install
* Ability customize the look and feel of the installation process
* Ability to build a distribution that offloads the `Web Experience Toolkit` theme(s) / plugins and related libraries to `WxT`

[wxt-project]:        https://github.com/drupalwxt/wxt-project
