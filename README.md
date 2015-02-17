# DrupalWxT

Modern Hugo based website, based entirely on [wxt][wet-boew-hugo]. Great for building innovative websites that are accessible, usable, interoperable, mobile-friendly and multilingual.

## Installation & Usage

DrupalWxT requires Hugo 0.12-DEV or newer. If your content is not displaying after running `hugo server`, be sure that your version (`hugo version`) is at least 0.12-DEV.

Markdown Content goes in content/post/title.md. Then:

    hugo server --theme=wxt --buildDrafts --watch

The stylesheet is included in static/css. If you want substantial customizations you should use the scss directory and install sass (and Ruby). At the moment, this is entirely optional, since I'm commiting the final stylesheet. Note that if you make customizations to main.css, then rebuild with sass, those changes could get lost.

    bundle install
    sass scss/main.scss static/css/main.css

More hugo-specific details available at [hugo][hugo].

## Configuration

DrupalWxT specific configuration options are available in [config.yaml].

Edit: config.yaml (general options), main.css (theme colors &amp; fonts)

```
drupalwxt/
├── config.yaml
├── _scss/
    ├── main.scss
```

_Note: when editing config.yaml, you need to restart hugo to see the changes._

## Todo:

+ Develop site architecture
+ Pick task runner


<!-- Links Referenced -->

[sylus]:                http://coderwall.com/sylus
[travisci]:             http://travis-ci.org/drupalwxt/drupalwxt.io
[travisci-badge]:       https://api.travis-ci.org/drupalwxt/drupalwxt.io?branch=master
[hugo]:                 http://hugo.spf13.com
[wet-boew-hugo]:        https://github.com/wet-boew/wet-boew-hugo
