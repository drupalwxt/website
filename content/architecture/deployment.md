+++
draft = true
title = "Content Staging with Deploy + UUID"
description="Deployment functionality for distributing content across Drupal sites."
language = "en"
tags = [
    "architecture",
    "deployment",
    "content staging",
]
date = "2015-01-18T13:10:52-05:00"
type = "single"
+++

## Deployment with Drupal WxT

There are 4 essential modules that facilitate deployment in Drupal WxT:

1. **WetKit Deployment**: Provides the base configuration for both source and destination servers as well as default content types

2. **WetKit Deployment Environment Indicator**: Provides contextual environment information  (`.dev`, `.qa`, `.prod`) on the toolbar

3. **WetKit Deployment Source**: Provides the functionality to deploy content in JSON to the destination servers

4. **WetKit Deployment Destination**: Provides the CRUD interface to consume the JSON data that was sent from the client server

## WetKit Deployment:

* Provides the make file for all deployment module dependencies
* Adds configured custom content types (Simple + Moderated) to show a fully functional deployment
* Adds a node/edit and node/view panel page for the custom content types
* Adds the field bases (deploy_to_destination_site and shared_content) that each entity / bundle will need to inherit to facilitate deployment
* Module is required for deployment functionality

## WetKit Deployment Environment Indicator:

* Drupal modules: environment_indicator
* Environment settings are triggered by regex in url (`.dev`, `.qa`, `.prod`)
* Module is optional for deployment and only provides UX functionality

## WetKit Deployment Source:

* Drupal modules: `deploy`, `deploy_services_client`, `entity_dependency`, `entity_menu_links`, `shared_content_source`, and `uuid`
* Batch Entity Deployments:
  * Single or Bulk deploy entities to n specified Destination Server(s)
  * Administrative interface at: /admin/structure/deploy
  * Interface is completely customizable and made up of `Deploy Plus`, `Panels` and `Views`
* Inline Entity Deployments based on a checkbox on an individual entity save leveraging `Shared Content`
* Single or Bulk Plan Managed aggregator using Memory/Queue Processor
* Creates default source field instances for beans, files, nodes (deploy + moderated), taxonomy terms (tags), and users
* Adds VBO (views bulk operations) for node, bean, file, term, and user
* Provides extensive customizations to ensure menu links are faux converted to entities and deployed with data integrity intact
* Customized CTools content types for deployment management plan
* Provides custom handlers to allow for Taxonomy Terms + Menu Link reordering to be sent to Destination Server

## WetKit Deployment Destination:

* Drupal modules: `entity_menu_links`, `services`, `shared_content_destination`, and `uuid`
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

* Creates default destination field instances for beans, files, nodes (deploy + moderated), taxonomy terms (tags), and users
* Configures redirect on edit page for all deployable entities on destination site so always redirects to source site

## Deployment Plans

Deployment plans have largely two options for processing. Though please note that Drupal WxT has duplicated these handlers in case custom logic was needed to get deployment to work with entity translation based deployments. Currently only the DeployServiceRest class has actually needed to be overridden from deploy itself.

* Memory processor: All entities are deployed in memory. Works best with small deployments.
* Queue API: All entities are queued for deployment with the Queue API. Works best with large deployments.
* Batch API: All entities are processed with the Batch API. Works best when deployments are done through the UI.

## Deployment Plans (Large Files)

Please note that all types of deployments above are still subject to a variety of php settings. The following ones in particular should be noted:

* max_allowed_packet
* upload_max_filesize
* post_max_size
* memory_limit

While the first three are relatively straightforward it is memory_limit that most often causes confusion when deployments timeout and/or fail. For instance if you upload a 50MB file on a source site, that file additionally has to be converted into JSON and sent to the destination site which already means the PHP process is using 100MB. If the php memory_limit is set to 256MB then one can see how problems arise.

The current solution for this problem is to create a 'public://upload/media' folder and run the following commands:

```sh

    drush vset wetkit_deployment_source_file_contents_override TRUE
    drush en media_bulk_upoad

```

What this does is disable the actual file being deployed but not the actual generated JSON or metadata about the file itself. We instead leverage inotify + rsync which is watching and then syncing to this specific directory between the source and production site. Therefore the php process doesn't have to handle the file aspect of the deployment and issues about the php memory_limit are resolved.

## Caveats

Drupal WxT provides automatic support for deployment on a variety of entities and associated bundles. However it can only provide deployment support for entities that it currently knows about.
