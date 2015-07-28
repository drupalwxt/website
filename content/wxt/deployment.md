+++
draft = true
title = "Deployment"
description="Deployment functionality for Drupal content staging."
language = "en"
tags = [
    "deployment",
    "content staging",
    "wxt"
]
date = "2015-01-18T13:10:52-05:00"
+++

## Overview

There are 4 essential components that facilitate the deployment workflow:

1. WetKit Deployment: Provides the base configuration for both source and destination servers as well as default content types

2. WetKit Deployment Environment Indicator: Provides contextual environment informaiton (Dev, QA, Prod) on the toolbar to ease working with multiple sites

3. WetKit Deployment Source: Provides the functionality to deploy content in JSON to the destination servers

4. WetKit Deployment Destination: Provides the CRUD interface to consume the JSON data that was sent from the client server

## Modules

### WetKit Deployment:

* Provides the make file for all deployment module dependencies
* Adds configured custom content types (Simple + Moderated) to show a fully functional deployment
* Adds a node/edit and node/view panel page for the custom content types
* Adds the field bases (deploy_to_destination_site and shared_content) that each entity / bundle will need to inherit to facilitate deployment
* Module is required for deployment functionality

### WetKit Deployment Environment Indicator:

* Drupal modules: environment_indicator
* Environment settings are triggered by regex in url Dev (*.dev), QA (*.qa), and PROD (*prod)
* Module is optional for deployment and only provides UX functionality

### WetKit Deployment Source:

* Drupal modules: deploy, deploy_services_client, entity_dependency, entity_menu_links, shared_content_source, and uuid. (Including submodules + WxT base)
* Batch Endpoints:

  * Bulk deploy entities to Destination Server
  * Administrative interface at: /admin/dashboard/deployment
  * Interface is completely customizable and made up of Panels + Views
  * Customized Queue display and quick view for each entity in queue

* Single Endpoints:

  * Single deploy entity to Destination Server
  * Deploys automatically or based on a checkbox on an individual entity save

* Batch Plan: Managed aggregator using Queue Processor
* Single Plan: Managed aggregator using Memory Processor
* Creates default source field instances for beans (all), files (all), nodes (deploy + moderated), taxonomy terms (tags), and users (all)
* Adds VBO (views bulk operations) for node, bean, file, term, and user
* Provides extensive customizations to ensure menu links are faux converted to entities and deployed with data integrity despite being faux
* Customized CTools content types for deployment management plan
* Theming of all deployment screens for improved UX and extensibility
* Provides custom handlers to allow for Taxonomy Terms + Menu Link reordering to be sent to Destination Server

### WetKit Deployment Destination:

* Drupal modules: entity_menu_links, services + rest server, shared_content_destination, and uuid (including additional sub modules + WxT base)
* Configures the CRUD endpoints and available settings:

    ```
    endpoint: services/rest
    formatters: json
    parsers: json, x-www-form-urlencoded, form-data
    resources:
      bean (retrieve, update, delete)
      file (retrieve, update, delete)
      node + comments (retrieve, update, delete)
      user (retrieve, update, delete)
      taxonomy_term (retrieve, update, delete, actions: reorder)
      field_collection_item: (retrieve, update, delete, actions: reorder)
      menu_link: (retrieve, update, delete, actions: reorder)
    ```

* Created default destination field instances for beans (all), files (all), nodes (deploy + moderated), taxonomy terms (tags), and users (all)
* Configures redirect on edit page for all deployable entities on destination site so always redirects to source site

## Caveats

Drupal WxT provides automatic support for deployment on a variety of entities and associated bundles. However it can only provide deployment support for entities that it currently knows about. For custom entities and bundles it is useful to provide the steps to add deployment support.
