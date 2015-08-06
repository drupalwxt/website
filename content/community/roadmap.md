+++
draft = true
title = "Roadmap"
description="Roadmap for Drupal WxT."
language = "en"
tags = [
    "roadmap"
]
date = "2015-01-13T13:10:52-05:00"
type = "single"
+++

## Vision Statement

The Drupal WxT distribution is a web content management system which assists in building and maintaining innovative Web sites that are accessible, usable, and interoperable. The primary goal of Drupal WxT is to provide an enterprise level platform that can assist governments and larger organizations in disseminating data.

## Mandatory Features

There are a lot of features inherently provided by Drupal WxT. However there are a few that have been designated as mandatory to support and as such have shaped the architecture of the distribution.

<table id="components-theme" class="wb-tables table table-striped table-hover" data-wb-tables='{"columnDefs": [ { "visible": true, "targets": [ 3 ] } ], "lengthMenu": [[10, 25, -1], [10, 25, "All"]], "pageLength": 10 }'>
    <thead>
        <tr>
            <th>Priority #</th>
            <th>Feature</th>
            <th>Status</th>
            <th>Description</th>
        </tr>
    </thead>
    <tbody>
        <tr class="success">
            <td>1</td>
            <td>Accessibility</td>
            <td>Functional</td>
            <td>Accessibility and strict markup enforced by <a href="http://github.com/wet-boew/wet-boew">WxT</a>.</td>
        </tr>
        <tr class="success">
            <td>2</td>
            <td>Bootstrap</td>
            <td>Functional</td>
            <td>Bootstrap integration throughout the entire Front + Back End.</td>
        </tr>
        <tr class="success">
            <td>3</td>
            <td><a href="/wxt/content-moderation/">Content Moderation</a></td>
            <td>Functional</td>
            <td>A proper and extendable content workflow must be established.</td>
        </tr>
        <tr class="success">
            <td>4</td>
            <td><a href="/wxt/deployment">Content Staging / Deployment</a></td>
            <td>Functional</td>
            <td>Content should be deployable allowing for content to be sent reliably across drupal platforms.</td>
        </tr>
        <tr class="success">
            <td>5</td>
            <td>WxT jQuery Framework</td>
            <td>Functional</td>
            <td>Maintain template adherance and tightly couple with the functionality provided by by WxT.</td>
        </tr>
        <tr class="success">
            <td>6</td>
            <td>Metatags</td>
            <td>Functional</td>
            <td>Follow the Standard on Web Operability and Usability provided by TBS.</td>
        </tr>
        <tr class="success">
            <td>7</td>
            <td>Migration</td>
            <td>Functional</td>
            <td>Provide an suite of scripts allowing bulk migration of content from a variety of platforms into Drupal.</td>
        </tr>
        <tr class="success">
            <td>8</td>
            <td>Multilingual</td>
            <td>Functional</td>
            <td>Provide multilingual support throughout the platform.</td>
        </tr>
        <tr class="success">
            <td>9</td>
            <td>Performance</td>
            <td>Functional</td>
            <td>All custom code and when possible contributed modules should go through testing with XHProf + XHGui.</td>
        </tr>
        <tr class="success">
            <td>10</td>
            <td>Universal Unique Identifiers</td>
            <td>Functional</td>
            <td>All entities should be associated with UUID to allow for data to be reliably stored, accessed and deployed.</td>
        </tr>
        <tr class="success">
            <td>11</td>
            <td>Licensing</td>
            <td>Functional</td>
            <td>All aspects of the codebase including third party libraries must conform to GPLv3.</td>
        </tr>
    </tbody>
</table>
