+++
draft = true
title = "Profiling with XHProf + XHGui"
description="Showcasing profiling tools that can help to analyze performance of your Drupal installation."
language = "en"
tags = [
    "performance",
]
date = "2015-01-20T13:10:52-05:00"
+++

[XHProf][xhprof] is a function-level hierarchical profiler for PHP. The raw data collection component is implemented in C (as a PHP extension). It is capable of reporting function-level inclusive and exclusive wall times, memory usage, CPU times and number of calls for each function. Additionally, it supports ability to compare two runs (hierarchical DIFF reports), or aggregate results from multiple runs.

[XHGui][xhgui] is a tool built upon XHProf to facilitate both an improved user experience and a more efficient storage of metrics via optional support for MongoDB. The user interface has been designed from the ground up to help expose the metrics in a more meaninful way.


<!-- Links Referenced -->

[mongo]:                http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu
[perf_install]:         installation.md
[php-mongo]:            https://github.com/mongodb/mongo-php-driver
[xhgui]:                https://github.com/perftools/xhgui
[xhprof]:               https://github.com/phacility/xhprof
