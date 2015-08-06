+++
draft = true
title = "Varnish"
description="To facilitate development with Drupal WxT."
language = "en"
tags = [
    "varnish",
    "performance"
]
date = "2015-01-13T13:10:52-05:00"
type = "single"
+++

[Varnish][varnish] is an open source software-only reverse HTTP caching proxy (often referred to as a Web Accelerator). Varnish is developed on Linux but can be compiled on other UNIX operating systems. It is heavily multi-threaded and is capable of taking advantage of the memory available on 64-bit systems as well as 32-bit systems, and should scale as CPU’s are added. Reputedly, Varnish can respond to hundreds of requests per second.

A caching reverse proxy is a layer of software that sits between the external world and the web server. Very often with websites, the same static page is served over and over. Varnish caches these web pages and when an HTTP request comes in for a static page, Varnish will retrieve the cached page from virtual memory itself and quickly return it to the web client from memory. In this way, the overhead of the Apache web server and WCMS application are avoided altogether.

Varnish is very configurable, so the caching strategy can be individually tailored for every installation. Furthermore, Varnish provides a mechanism that allows it to be integrated with Drupal. By allowing Drupal itself to indicate when a cache entry should be invalidated and refreshed, pages can be safely cached for longer periods of time and therefore increase the number of times that Varnish can respond with a cached web page without passing the request back to Apache and Drupal.

Naturally, Varnish does not need to reside on the same server as Apache and can be placed in front as a separate access point for enhanced performance.

## Load Balancing (Optional)

Varnish is also a software load balancer. Varnish uses round-robin balancing to an arbitrary number of back-ends. Different guidelines can be provided to each backend in case they do not have identical capabilities. Other balancing policies are available too, including random assignment and assignment based on server health. Varnish can use backend health polling so that in the case where one server is becoming overwhelmed; traffic will not be directed to that server.

## Default VCL

An example of a best practice default.vcl for varnish can be found in the following github repository:

* [Default VCL (3.x)][varnish_vcl_3]
* [Default VCL (4.x)][varnish_vcl_4]

<!-- Links Referenced -->

[varnish]:          https://www.varnish-cache.org
[varnish_vcl_3]:    https://github.com/mattiasgeniar/varnish-3.0-configuration-templates/blob/master/production.vcl
[varnish_vcl_4]:    https://github.com/mattiasgeniar/varnish-4.0-configuration-templates/blob/master/default.vcl
