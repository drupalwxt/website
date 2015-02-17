+++
draft = true
title = "Databases"
description="To facilitate development with Drupal WxT."
language = "en"
tags = [
    "performance",
]
date = "2015-01-13T13:10:52-05:00"
+++

There are a variety of Databases you can use with Drupal as listed in the [Drupal requirements][drupal_req] section.

However only MySQL + PostgreSQL are tested extensively with Drupal WxT and the various contrib modules it leverages.

Additionally it has been our experience that Microsoft SQL Server is possible but with many caveats. While Oracle support itself should not be attempted due to a outdated PDO Driver.

## PostgreSQL

[PostgreSQL][postgresql], often simply Postgres, is an open source object-relational database management system (ORDBMS) with an emphasis on extensibility and standards compliance. It is released under the PostgreSQL License, a free/open source software license, similar to the MIT License. PostgreSQL is developed by the PostgreSQL Global Development Group, consisting of a handful of volunteers employed and supervised by companies such as Red Hat and EnterpriseDB. It implements the majority of the SQL:2011 standard, is ACID-compliant, is fully transactional (including all DDL statements), has extensible data types, operators, index methods, functions, aggregates, procedural languages, and has a large number of extensions written by third parties. PostgreSQL is available for many platforms including Linux, FreeBSD, Solaris, Microsoft Windows and Mac OS X.

## MySQL

[MySQL][mysql] is the one of the three most commonly used relational database management systems in use on the Internet and powers well known sites such as Flick, Youtube, Wikipedia, Google, Facebook, and Twitter. MySQL is an open-source solution that can be compiled or installed from a binary package and is available for multiple operating systems.

MySQL was acquired by Oracle Corporation in 2008, and Oracle now offers several versions. There is a community open-source edition, as well as a licensed Enterprise Edition and a Cluster Edition that offer the same capabilities as the community edition, but with additional features and support. The Enterprise Edition includes additional features such as replication, additional thread scaling, and external security authentication for Windows Active Directory. The Cluster Edition offers database partitioning across servers for scalability and failover capabilities for high availability.

<!-- Links Referenced -->

[drupal_req]:       https://www.drupal.org/requirements
[mysql]:            https://mysql.com
[postgresql]:       http://postgresql.org
