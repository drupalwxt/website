+++
draft = false
title = "Contributing to Documentation Site"
description="How to contribute and expand Drupal WxT end-user documentation."
language = "en"
tags = [
    "post",
    "wxt",
]
date = "2019-01-01T10:10:30-05:00"
+++

Our documentation site for Drupal WxT is powered by [Hugo][hugo] (a static site generator) that converts markdown files to html and allows for a quick and easy deployment to GitHub pages.

This allows for contributors who feel the documentation is lacking in certain areas to simply perform a pull request and submit a markdown file  alongside with the appropriate front matter (metadata about the content).

Should the pull request be accepted the code will automatically be pushed to the live website via [GitHub Actions][github-ci] and published to [drupalwxt.github.io][drupalwxt].

For more information on how to contribute to the documentation site please consult the [README.md][readme] file.

<!-- Links Referenced -->

[drupalwxt]:      https://drupalwxt.github.io
[github-actions]: https://github.com/drupalwxt/wxt/actions
[hugo]:           https://gohugo.io/
[readme]:         https://github.com/drupalwxt/website/blob/master/README.md
