+++
draft = false
title = "Libraries API"
description="To facilitate development with Drupal WxT."
language = "en"
tags = [
    "architecture",
]
date = "2015-07-27T13:10:52-05:00"
type = "single"
+++

[Libraries API][libraries] is the common denominator and the defacto standard for all Drupal modules/profiles/themes that integrate with external libraries.

The module introduces a common repository for libraries in `profiles/distro/libraries` or `sites/all/libraries`.

## Key Features

* The same library can be shared by more than one module.
* The same library can be shared by more than one site.
* Ease the process of upgrading a module that requires an external library. Just replace the module folder with the new one. No need to move the contained library out and back in.
* Prevent incompatibilities due to having the same library installed more than once in different versions.
* Central installation instructions (widget) to help users figure out how to install.
* Library classification.
* Dependency handling.
* Library version detection.
* Runtime control of library availability.

## WxT

Drupal WxT leverages the libraries module for all of its handling for the [Web Experience Toolkit][wxt]. This allows for a decoupled / performant approach to loading the libraries while also allowing for quick updates by just replacing the associated theme in the libraries folder without any code changes.

## Codebase

The specific Libraries API code can be found in the wetkit_wetboew module which provides both a make file for the dependencies as well as the Libraries code invocation itself. A thorough example of all the properties in hook_libraries_info() can be found at the [Libraries API documentation][libraries_api]

<!-- Links Referenced -->

[libraries]:                https://www.drupal.org/documentation/modules/libraries
[libraries_api]:            https://www.drupal.org/documentation/modules/libraries
[wxt]:                      https://github.com/wet-boew/wet-boew
