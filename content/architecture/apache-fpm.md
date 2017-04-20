+++
draft = false
title = "Apache and PHP-FPM"
description="Showcasing how to leverage PHP-FPM with Apache."
language = "en"
tags = [
    "performance",
]
date = "2015-08-04T19:10:52-05:00"
type = "single"
+++

<div class="alert alert-info">
  <h4>Important</h4>
  <p>Want even more performance? Head on over to our <a href="{{< relref "performance/nginx-fpm.md" >}}">Nginx + PHP-FPM</a> documentation.</p>
</div>

[Apache][apache] can achieve a rough parity in performance to a Nginx + PHP-FPM setup. With the added caveat that Apache should be run in either `MPM Event` or `MPM Worker` mode. Please note that the following statement holds true when analyzing performance:

    page speed < requests served

This means we are more concerned about how many requests that can be served then how fast we can serve the request. Apache under the pre-fork setting is a process-based server and therefore forks a process for every request. As opposed to Nginx and the MPM modes in Apache which are event based and make use of threads instead of processes.

While Apache using pre-fork can perform on par with a thread based server under light loads, under heavier loads you can notice Apache requiring several hundred megabytes (including the web application) for just the web server whereas the thread based server would be much smaller segment of RAM.

## Scenario

Server with the following technical specs:

* CPU: 4 @ 2.7GHZ
* RAM: 8GB

### Quick Audit Apache

There are three key areas to inspect when looking at Apache for a PHP-FPM environment. These are `keepalive`, `maxclients` and `allowoverride`.

#### KeepAlive

KeepAlive can severely limit Apache's ability to handle many concurrent requests. (Unless behind a Reverse Proxy such as Nginx, Varnish or Squid). For many websites including those powered by Drupal a good setting for the KeepAliveTimeout would be a low value like 3 seconds.

    keepalivetimeout = 3s

#### MaxClients

This configuration is important to get right. If set to low this could causes users to wait for Apache to respond to the request while the server resources are idle. However if set to high the server will quickly run out of ram and start swapping to disk. Page responses times can will quickly go from ms to mins.

    maxclients = (Total RAM - Memory used for Linux, DB, etc.) / process size

    Note: To get an approx average httpd process size:

    ps aux | grep 'httpd' | awk '{print $6/1024 " MB";}'

#### AllowOverrides

While the impact of this setting on performance can vary greatly. For complex applications like Drupal you theoretically could have thousands of files at quite large directories depths. This would result in Apache having to recurse through all of these directories parsing all .htaccess files along the way. Since i/o cals are expensive this can be further exacerbated by the number of contrib modules or libraries present. Note: Special care would have to be emphasized in moving the appropriate Drupal .htaccess files into the httpd.conf file.

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

* apache (<=2.4)
* mpm_event > mpm_worker (descendent)
* zendopcache > apc (deprecated)
* php_fpm (proxyPass)

Note: It is also important to highlight that single core php-fpm instances won't be much faster then mod_php. PHP-FPM benefits proportionately to the number of cpu cores available. While a dual core would yield a performance gain. A recommended number would be at least 4 cores.

## Detailed Setup

In the `/etc/apache/conf.d/mpm-event.conf` or `/etc/apache/conf.d/mpm-worker.conf` file:

```sh
<IfModule mpm_*_module>
  ServerLimit           (Total RAM - Memory used for Linux, DB, etc.) / process size
  StartServers          (Number of Cores)
  MinSpareThreads       25
  MaxSpareThreads       75
  ThreadsPerChild       25
  MaxClients            (Total RAM - Memory used for Linux, DB, etc.) / process size
  MaxRequestsPerChild   1000
</IfModule>
```

In the `/etc/apache2/conf.d/php-fpm.conf` file:

```sh
<IfModule mod_fastcgi.c>
  Alias /usr/sbin/php-fpm.fcgi /usr/sbin/php-fpm
  AddHandler php-fastcgi .php
  Action php-fastcgi /usr/sbin/php-fpm.fcgi
  FastCGIExternalServer /usr/sbin/php-fpm -host 127.0.0.1:9000
  <Directory /usr/sbin>
    Options ExecCGI FollowSymLinks
    SetHandler fastcgi-script
    Order allow,deny
    Allow from all
  </Directory>
</IfModule>
```

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
sudo a2enmod fastcgi actions rewrite deflate expires
sudo service php5-fpm restart
sudo service apache2 restart
```

<!-- Links Referenced -->

[apache]:                 http://httpd.apache.org/docs/2.4
