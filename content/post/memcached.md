+++
draft = false
title = "Memcached"
description="To facilitate development with Drupal WxT."
language = "en"
tags = [
    "memcache",
    "performance"
]
date = "2015-01-13T13:10:52-05:00"
type = "single"
+++

[Memcache][memcache] is an open-source high performance object caching system that is specifically intended for reducing calls to the DBMS. Memcache is a back-end service (i.e. a daemon on UNIX) that provides a simple but fast in-memory key/value store. This is designed to be scalable and distributed so that requests should not slow down as the load increases, and multiple memcached servers can be employed at once.

For Drupal, memcache can be used to cache database queries. Through an extension, Drupal can connect to the memcache daemon. If memcache is present Drupal will first attempt to quickly retrieve data from memcache, and only fallback to a database query if the data is not cached in virtual memory. Similarly, Drupal will invalidate the cache if it makes a change to the database.

<!-- Links Referenced -->

[memcache]:           http://memcache.org