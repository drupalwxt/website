+++
draft = true
title = "Working Examples"
description="To facilitate development with Drupal WxT."
language = "en"
tags = [
    "wxt",
]
date = "2015-01-13T13:10:52-05:00"
type = "single"
weight = -100
+++

Below we highlight the work done on getting the various WxT components / plugins and themes / styles leveraged properly in Drupal.

Levels of integration with Drupal will vary as some of the plugins can simply be leveraged by calling a class in markup. Where possible we will try to make a distinction on how each functionality can be used.

Note: This list does not represent the full capabilities of the Drupal WxT platform merely the WxT components it integrates with.

## Supported WxT Themes

<table id="components-theme" class="wb-tables table table-striped table-hover" data-wb-tables='{"columnDefs": [ { "visible": false, "targets": [ 3 ] } ], "lengthMenu": [[10, 25, -1], [10, 25, "All"]], "pageLength": -1 }'>
    <thead>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Drupal Integration</th>
            <th>Keywords</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="http://wet-boew.github.io/themes-dist/theme-base/index-en.html">Base theme</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/themesstyle-en.html">Themes and style</a></td>
            <td>Full support via <a href="{{< relref "architecture/libraries-api.md" >}}">Libraries API</a> and WetKit Bootstrap theme.</td>
            <td>theme-base</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/themes-dist/GCWeb/index-en.html">Canada.ca theme</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/themesstyle-en.html">Themes and style</a></td>
            <td>Full support via <a href="{{< relref "architecture/libraries-api.md" >}}">Libraries API</a> and WetKit Bootstrap theme.</td>
            <td>GCWeb</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/themes-dist/theme-gc-intranet/index-en.html">Government of Canada Intranet theme</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/themesstyle-en.html">Themes and style</a></td>
            <td>Full support via <a href="{{< relref "architecture/libraries-api.md" >}}">Libraries API</a> and WetKit Bootstrap theme.</td>
            <td>theme-gc-intranet</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/themes-dist/theme-gcwu-fegc/index-en.html">Government of Canada Web Usability theme</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/themesstyle-en.html">Themes and style</a></td>
            <td>Full support via <a href="{{< relref "architecture/libraries-api.md" >}}">Libraries API</a> and WetKit Bootstrap theme.</td>
            <td>theme-gcwu-fegc</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/themes-dist/theme-ogpl/index-en.html">Open Government Platform (OGPL) theme</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/themesstyle-en.html">Themes and style</a></td>
            <td>Full support via <a href="{{< relref "architecture/libraries-api.md" >}}">Libraries API</a> and WetKit Bootstrap theme.</td>
            <td>theme-ogpl</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/v4.0-ci/theme/index-en.html">Web Experience Toolkit (WET) theme</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/themesstyle-en.html">Themes and style</a></td>
            <td>Full support via <a href="{{< relref "architecture/libraries-api.md" >}}">Libraries API</a> and WetKit Bootstrap theme.</td>
            <td>theme-wet-boew</td>
        </tr>
    </tbody>
</table>

## Supported WxT Plugins

<table id="components-plugins" class="wb-tables table table-striped table-hover" data-wb-tables='{"columnDefs": [ { "visible": false, "targets": [ 3 ] } ], "lengthMenu": [[10, 25, -1], [10, 25, "All"]], "pageLength": -1 }'>
    <thead>
        <tr>
            <th>Name</th>
            <th>Category</th>
            <th>Drupal Integration</th>
            <th>Keywords</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td><a href="http://wet-boew.github.io/v4.0-ci/demos/archived/archived-en.html">Archived information</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/other-en.html">Plugins</a></td>
            <td>
                <p>Supported via the following:</p>
                <ul>
                    <li>Natively with any html input (panes, views, wysiwyg)</li>
                    <li>CTools Widget linked to a custom field (field_archived_content).</li>
                </ul>
            </td>
            <td>archived</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/twitter/twitter-en.html">Twitter embedded timeline</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/plugins-en.html">Plugins</a></td>
            <td>
                <p>Supported via the following:</p>
                <ul>
                    <li>Natively with any html input (panes, views, wysiwyg)</li>
                    <li>Support as a Bean Plugin (Twitter)</li>
                </ul>
            </td>
            <td>twitter</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/wet-boew/demos/lightbox/lightbox-en.html">Lightbox</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/plugins-en.html">Plugins</a></td>
            <td>
                <p>Supported via the following:</p>
                <ul>
                    <li>Natively with any html input (panes, views, wysiwyg)</li>
                    <li>Field Formatter for field type: image</li>
                </ul>
            </td>
            <td>lightbox</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/menu/menu-en.html">Menu</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/plugins-en.html">Plugins</a></td>
            <td>
                <p>Supported via the following:</p>
                <ul>
                    <li>Natively with any html input (panes, views, wysiwyg)</li>
                    <li>CTools Widget (Menu Block)</li>
                    <li>Drupal theme functions</li>
                </ul>
            </td>
            <td>lightbox</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/multimedia/multimedia-en.html">Multimedia Player</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/plugins-en.html">Plugins</a></td>
            <td>
                <p>Supported via the following:</p>
                <ul>
                    <li>Natively with any html input (panes, views, wysiwyg)</li>
                    <li>File Entity (WetKit Video)</li>
                </ul>
            </td>
            <td>lightbox</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/share/share-en.html">Shared Widget</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/plugins-en.html">Plugins</a></td>
            <td>
                <p>Supported via the following:</p>
                <ul>
                    <li>Natively with any html input (panes, views, wysiwyg)</li>
                    <li>CTools Widget (Share)</li>
                </ul>
            </td>
            <td>lightbox</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/tabs/tabs-en.html">Tabbed Interface</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/plugins-en.html">Plugins</a></td>
            <td>
                <p>Supported via the following:</p>
                <ul>
                    <li>Natively with any html input (panes, views, wysiwyg)</li>
                    <li>Support as a Bean Plugin (Slideshow)</li>
                </ul>
            </td>
            <td>zebra</td>
        </tr>
        <tr>
            <td><a href="http://wet-boew.github.io/v4.0-ci/demos/zebra/zebra-en.html">Zebra striping</a></td>
            <td><a href="http://wet-boew.github.io/v4.0-ci/docs/ref/plugins-en.html">Plugins</a></td>
            <td>
                <p>Supported via the following:</p>
                <ul>
                    <li>Natively with any html input (panes, views, wysiwyg)</li>
                    <li>Bootstrap (base theme)</li>
                </ul>
            </td>
            <td>zebra</td>
        </tr>
    </tbody>
</table>
