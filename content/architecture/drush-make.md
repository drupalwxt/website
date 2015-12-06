+++
draft = true
title = "Drush Make + Site Install"
description="To facilitate development with Drupal WxT."
language = "en"
tags = [
    "architecture",
]
date = "2015-01-13T13:10:52-05:00"
type = "single"
+++

<div class="alert alert-info">
  <h4>Important</h4>
  <p>These instructions could become outdated over time. Up to date instructions can always be found via the official <a href="https://github.com/wet-boew/wet-boew-drupal/blob/7.x-4.x/README.md">readme</a>.</p>
</div>

Drupal WxT uses Drush Make for a rapid built-out of the Drupal codebase. A drush make file is similar to an "ant script" and allows us to host just the code that we are developing (Installation Profile and Custom Modules, Features, and Themes) on GitHub. Any user who has Drush installed can then perform a build-out of both the Drupal Core package and various contributed modules hosted on Drupal.org.

1. Ensure you have the appropriate base requirements setup for Drupal as per the [System Requirements][system_requirements] documentation.

2. Install Drush 6.3 or higher (includes Drush Make):

    a) Linux, Mac OSX: Follow instructions at [drupal.org][drush_server_install]

    b) Windows: [Installer][drush_win_install]

3. Install Git 1.7.10 or higher (Some lower versions of git do not apply patches from the make file with Drush Make):

    a) Linux, Mac OSX: [Installer][git_osx_install]

    b) Windows: [Installer][git_win_install]

4. Clone this repository into a directory using the following commands on the Git Bash command prompt:

    ``` bash
    git clone https://github.com/wet-boew/wet-boew-drupal.git wet-boew-drupal
    ```

5. Build  and install the WxT installation profile using Drush (Password must not be simple)

    ``` bash
    mv wet-boew-drupal wetkit
    mkdir profiles
    mv wetkit profiles/
    mkdir drupal
    mv profiles drupal/
    drush make --yes profiles/wetkit/drupal-org-core.make --prepare-install
    drush make --yes profiles/wetkit/drupal-org.make --no-core --contrib-destination=profiles/wetkit
    ```

6. Quickly install using the Drush CLI (Password must not be simple or won't install)

    a) For example, on a MySQL database:

    ``` bash
    drush si wetkit \
      wetkit_theme_selection_form.theme=wetkit_bootstrap install_configure_form.demo_content=TRUE \
      --db-url=pgsql://drupal:drupal@127.0.0.1:3306/wetkit_db \
      --sites-subdir=default \
      --account-name=admin \
      --account-pass=Password@1234 \
      --site-mail=admin@example.com \
      --site-name='Web Experience Toolkit' \
      --yes;
    ```

    Note: For the 1.x version the theme parameter should be `wetkit_omega`.

    b) For a PostgreSQL database, change the --db-url option to:

    ``` bash
    --db-url=pgsql://drupalusr:drupalpass@127.0.0.1:5432/wetkit_db
    ```

    c) For a Microsoft SQL Server database, change the --db-url option to:

    ``` bash
    --db-url=sqlsrv://drupalusr:drupalpass@127.0.0.1:1433/wetkit_db
    ```

7. Fix Permissions

    Depending on your server set-up you will have to make sure that the /sites/default/files or /sites/&lt;domain&gt;/files directory has the correct owner (webserver):

    a) On a Unix-like system:

    ``` bash
    chown -R apache:apache /sites/domain/files
    ```
    Note that on Ubuntu Linux the apache user is 'www-data';

    b) On Windows (Needs Update):

    ``` bash
    icacls sites\default\settings.php /grant BUILTIN\IIS_IUSRS:(W)
    icacls sites\default\files /grant BUILTIN\IIS_IUSRS:(OI)(CI)(M)
    ```

<!-- Links Referenced -->

[drush_server_install]:         http://drupal.org/node/477684
[drush_win_install]:            http://drush.ws/drush_windows_installer
[git_osx_install]:              http://code.google.com/p/git-osx-installer
[git_win_install]:              http://msysgit.github.com
[readme]:                       https://github.com/wet-boew/wet-boew-drupal/blob/7.x-4.x/README.md
[system_requirements]:          /architecture/system-requirements
[wxt]:                          http://drupal.org/project/wetkit
