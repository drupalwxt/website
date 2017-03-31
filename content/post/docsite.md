+++
draft = false
title = "Contributing to Documentation Site"
description="How to contribute and help expand Drupal WxT end-user documentation."
language = "en"
tags = [
    "post",
    "wxt",
]
date = "2015-01-13T13:10:52-05:00"
+++

Our new documentation site for Drupal WxT has been updated and with it a improved workflow for collaboration. This documentation site is powered by [Hugo][hugo] (a static site generator) that converts markdown files to html and allows for a quick and easy deployment to GitHub pages.

This allows for contributors who feel the documentation is lacking in certain areas to simply perform a pull request and submit a markdown file  alongside with the appropriate front matter (metadata about the content).

Should the pull request be accepted the code will automatically be pushed to the live website via [Travis CI][travis-ci] and published to [drupalwxt.github.io][drupalwxt].

For more information on how to contribute to the documentation site please consult the [README.md][readme] file.


<!-- Links Referenced -->

[drupalwxt]:    http://drupalwxt.github.io
[hugo]:         http://gohugo.io/
[readme]:       https://raw.githubusercontent.com/wet-boew/wet-boew-hugo/master/README.md
[travis-ci]:    http://travis-ci.org
