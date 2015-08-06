+++
draft = true
title = "Nginx and PHP-FPM"
description="Showcasing how to leverage PHP-FPM with Nginx."
language = "en"
tags = [
    "performance",
]
date = "2015-08-04T19:10:52-05:00"
type = "single"
+++

<div class="alert alert-info">
  <h4>Important</h4>
  <p>Using Apache? Head on over to our <a href="{{< relref "performance/apache-fpm.md" >}}">Apache + PHP-FPM</a> documentation.</p>
</div>

[Nginx][nginx] is event-based, so it does not follow Apache's style of spawning new processes or threads for each web page request. The end result is that even as load increases, memory and CPU usage remain manageable.

## Scenario

Server with the following technical specs:

* CPU: 4 @ 2.7GHZ
* RAM: 8GB

### Quick Audit Nginx

There are three key areas to inspect when looking at Nginx for a PHP-FPM environment. These are `worker_connections` and `worker_processes`.

#### Worker Connections

Sets the maximum number of simultaneous connections that can be opened by a worker process. This is often set to the number of CPU cores.

#### Worker Processes

Sets the maximum number of simultaneous connections that can be opened by a worker process.

### PHP-FPM

#### MaxChildren

When looking to optimize PHP-FPM it is largely depends on the application itself. However a standard rule that would satisfy a broad subset of use cases would be:

    pm.max_children = (Total RAM - Memory used for Linux, DB, etc.) / Average php process size

Helper Script:

```sh
ps -ylC php5-fpm --sort:rss | awk '!/RSS/ { s+=$8 } END { printf "%s\n", "Total memory used by PHP-FPM child processes: "; printf "%dM\n", s/
```

### Quick Setup

At a most base level this seems to be the ideal setup based on peer review:

* nginx (<=1.9.0)
* zendopcache > apc (deprecated)
* php-fpm (fastcgi)

Note: It is also important to highlight that single core php-fpm instances will not gain much of a performance improvement. PHP-FPM benefits proportionately to the number of cpu cores available. While a dual core would yield a performance gain. A recommended number would be at least 4 cores.

## Detailed Setup

In the `/etc/php5/fpm/pool.d/www.conf` file:

```sh
[www]
user = www-data
group = www-data
chdir = /
listen = 127.0.0.1:9000
pm = dynamic            (ondemand might be better for memory usage)
pm.max_children         (total RAM - (DB etc) / process size)
pm.start_servers        (1/4 of cpu cores)
pm.min_spare_servers    (1/2 of cpu cores)
pm.max_spare_servers    (total of cpur cores)
pm.max_requests         (high to prevent server respwan)
                        (tip: set really low to find memory leaks)
```

In the `/etc/php5/fpm/conf.d/local.ini` file:

```sh
memory_limit = 324M (WxT needs at minimum 256MB)
```

Then just execute the following commands:

```sh
nginx -s reload
```

<!-- Links Referenced -->

[nginx]:                 https://github.com/squizlabs/PHP_CodeSniffer
