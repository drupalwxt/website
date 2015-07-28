+++
draft = true
title = "Code Quality"
description="Showcasing tools that can help to ascertain the code quality of your Drupal installation."
language = "en"
tags = [
    "performance",
]
date = "2015-01-20T13:10:52-05:00"
+++

The following is a list of best practice tools to use when analyzing the code quality of modules made for Drupal:

1. [PHP CodeSniffer][php_cs]
2. [DrupalCS][drupalcs]
3. [DrupalPractice][drupalpractice]
4. [DrupalSecure][drupalsecure]

Normally these tools would be run based on a push to a CI server and will affect the build status if failures are detected.

Note: This page only discusses 'static code analysis' tools and not tests run during our CI build such as BDD tests with Behat.

# PHP CodeSniffer

PHP_CodeSniffer is a set of two PHP scripts; the main phpcs script that tokenises PHP, JavaScript and CSS files to detect violations of a defined coding standard, and a second phpcbf script to automatically correct coding standard violations. PHP_CodeSniffer is an essential development tool that ensures your code remains clean and consistent.

# Drupal CodeSniffer

Provides a coding standard for PHP_CodeSniffer, based on the Drupal Coding Standards. This module utilizes rules (mostly regular expressions) to review source code files for code that:

1. Needs to change due to Drupal API changes
2. Does not satisfy Drupal coding standards

# Drupal Practice

Uses PHP_CodeSniffer to find common errors that new Drupal developers make in their modules. Note that this will likely throw false positives and you should never change your code without verifying the reported problem. Everything that does not really fit into Coder Sniffer and pure coding standards will be included in this project.

Detects the following bad practices:

- Unused and undefined PHP variables
- @author tags in doc blocks
- form_set_error() being used without t()
- 'access administration pages' permission is used in hook_menu()
- Un-namespaced classes and interfaces are not prefixed with the module name
- $form_state['input'] is used instead of $form_state['values']
- $field['und'] is used instead of $field[LANGUAGE_NONE]
- Form API #options values are not translated with t()
- variable_get() calls where variables are not prefixed with the module name

# Drupal Secure

DrupalSecure Code Sniffer (secure_cs) is a secure coding validation tool for Drupal built on PHP_CodeSniffer and modeled after work on DrupalCS in the Coder module.

<!-- Links Referenced -->

[php_cs]:                 https://github.com/squizlabs/PHP_CodeSniffer
[drupalcs]:               https://www.drupal.org/project/coder
[drupalpractice]:          https://www.drupal.org/project/drupalpractice
[drupalsecure]:           https://www.drupal.org/sandbox/coltrane/1921926
