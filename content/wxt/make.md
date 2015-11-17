+++
draft = true
title = "Makefiles for Drupal WxT"
description="Makefiles which form the building blocks and dependencies for Drupal WxT."
language = "en"
tags = [
    "wxt",
]
date = "2015-01-13T13:10:52-05:00"
type = "single"
+++

Drush make turns a makefile into a working Drupal codebase.

Below you can see all of the associated makefiles Drupal WxT leverages to built out its codebase and adhere to continuous deployment principles.

For more information please consult:

* [Drush Make][drush_make]

## Distro Makefiles

<ul class="linenums list-unstyled wb-prettify all-pre">
    <li>
        <details>
            <summary>drupal.org-core.make</summary>
            <p><pre class="nowrap">
    api = 2
    core = 7.x

    projects[drupal][version] = 7.41
    projects[drupal][type] = core

    ; Patches for Drupal Core
    projects[drupal][patch][405360] = http://drupal.org/files/issues/aria-describedby_2.patch
    projects[drupal][patch][460408] = http://drupal.org/files/issues/menu-access_unpublished-nodes_460408-157.patch
    projects[drupal][patch][728702] = http://drupal.org/files/issues/install-redirect-on-empty-database-728702-36.patch
    projects[drupal][patch][865536] = http://drupal.org/files/drupal-865536-204.patch
    projects[drupal][patch][889772] = http://drupal.org/files/issues/drupal7-backport-889772-186.patch
    projects[drupal][patch][1081266] = http://drupal.org/files/drupal-1081266-102-drupal_get_filename-D7.patch
    projects[drupal][patch][1443308] = http://drupal.org/files/issues/drupal-1443308-49-module_load_include-static-cache.patch
    projects[drupal][patch][1443342] = http://drupal.org/files/drupal-1443342-1-inline-file_uri_scheme-in-file_stream_wrapper_uri_normalize.patch
    projects[drupal][patch][1470656] = http://drupal.org/files/drupal-1470656-14.patch
    projects[drupal][patch][1710656] = http://drupal.org/files/drupal-1710656-3-skip-hidden-menu-items-D7.patch
    projects[drupal][patch][1772316] = http://drupal.org/files/drupal7-allow_change_system-requirements-1772316-18.patch
    projects[drupal][patch][2289867] = http://drupal.org/files/issues/D7_port_fix_w3c_url_validation_html5_changes-2289867-1.patch
    projects[drupal][patch][2383823] = http://drupal.org/files/issues/2383823-check_name_empty-1.patch
    projects[drupal][patch][2339447] = http://drupal.org/files/issues/2339447-73-optimize_drupal_find_theme_functions.patch
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>drupal.org.make</summary>
            <p><pre class="nowrap">
    api = 2
    core = 7.x

    ; WxT Foundation (Custom)

    projects[wetkit_admin][version] = 4.x-dev
    projects[wetkit_admin][subdir] = custom
    projects[wetkit_admin][download][type] = git
    projects[wetkit_admin][download][revision] = a475fbf
    projects[wetkit_admin][download][branch] = 7.x-4.x

    projects[wetkit_bean][version] = 4.x-dev
    projects[wetkit_bean][subdir] = custom
    projects[wetkit_bean][download][type] = git
    projects[wetkit_bean][download][revision] = f99e895
    projects[wetkit_bean][download][branch] = 7.x-4.x

    projects[wetkit_breadcrumbs][version] = 4.x-dev
    projects[wetkit_breadcrumbs][subdir] = custom
    projects[wetkit_breadcrumbs][download][type] = git
    projects[wetkit_breadcrumbs][download][branch] = 7.x-4.x

    projects[wetkit_core][version] = 4.x-dev
    projects[wetkit_core][subdir] = custom
    projects[wetkit_core][download][type] = git
    projects[wetkit_core][download][revision] = 34fb3aa
    projects[wetkit_core][download][branch] = 7.x-4.x

    projects[wetkit_demo][version] = 4.x-dev
    projects[wetkit_demo][subdir] = custom
    projects[wetkit_demo][download][type] = git
    projects[wetkit_demo][download][branch] = 7.x-4.x

    projects[wetkit_deployment][version] = 4.x-dev
    projects[wetkit_deployment][subdir] = custom
    projects[wetkit_deployment][download][type] = git
    projects[wetkit_deployment][download][revision] = 4d5a985
    projects[wetkit_deployment][download][branch] = 7.x-4.x

    projects[wetkit_images][version] = 4.x-dev
    projects[wetkit_images][subdir] = custom
    projects[wetkit_images][download][type] = git
    projects[wetkit_images][download][revision] = c1d9585
    projects[wetkit_images][download][branch] = 7.x-4.x

    projects[wetkit_language][version] = 4.x-dev
    projects[wetkit_language][subdir] = custom
    projects[wetkit_language][download][type] = git
    projects[wetkit_language][download][revision] = fafe225
    projects[wetkit_language][download][branch] = 7.x-4.x

    projects[wetkit_layouts][version] = 4.x-dev
    projects[wetkit_layouts][subdir] = custom
    projects[wetkit_layouts][download][type] = git
    projects[wetkit_layouts][download][revision] = 471b25d
    projects[wetkit_layouts][download][branch] = 7.x-4.x

    projects[wetkit_menu][version] = 4.x-dev
    projects[wetkit_menu][subdir] = custom
    projects[wetkit_menu][download][type] = git
    projects[wetkit_menu][download][revision] = 1d07c86
    projects[wetkit_menu][download][branch] = 7.x-4.x

    projects[wetkit_metatag][version] = 4.x-dev
    projects[wetkit_metatag][subdir] = custom
    projects[wetkit_metatag][download][type] = git
    projects[wetkit_metatag][download][revision] = 6df1ffb
    projects[wetkit_metatag][download][branch] = 7.x-4.x

    projects[wetkit_migrate][version] = 4.x-dev
    projects[wetkit_migrate][subdir] = custom
    projects[wetkit_migrate][download][type] = git
    projects[wetkit_migrate][download][branch] = 7.x-4.x

    projects[wetkit_og][version] = 4.x-dev
    projects[wetkit_og][subdir] = custom
    projects[wetkit_og][download][type] = git
    projects[wetkit_og][download][branch] = 7.x-4.x

    projects[wetkit_pages][version] = 4.x-dev
    projects[wetkit_pages][subdir] = custom
    projects[wetkit_pages][download][type] = git
    projects[wetkit_pages][download][revision] = a7f27ad
    projects[wetkit_pages][download][branch] = 7.x-4.x

    projects[wetkit_search][version] = 4.x-dev
    projects[wetkit_search][subdir] = custom
    projects[wetkit_search][download][type] = git
    projects[wetkit_search][download][branch] = 7.x-4.x

    projects[wetkit_test][version] = 4.x-dev
    projects[wetkit_test][subdir] = custom
    projects[wetkit_test][download][type] = git
    projects[wetkit_test][download][revision] = dd562c3
    projects[wetkit_test][download][branch] = 7.x-4.x

    projects[wetkit_theme][version] = 4.x-dev
    projects[wetkit_theme][subdir] = custom
    projects[wetkit_theme][download][type] = git
    projects[wetkit_theme][download][branch] = 7.x-4.x

    projects[wetkit_users][version] = 4.x-dev
    projects[wetkit_users][subdir] = custom
    projects[wetkit_users][download][type] = git
    projects[wetkit_users][download][branch] = 7.x-4.x

    projects[wetkit_webform][version] = 4.x-dev
    projects[wetkit_webform][subdir] = custom
    projects[wetkit_webform][download][type] = git
    projects[wetkit_webform][download][branch] = 7.x-4.x

    projects[wetkit_wetboew][version] = 4.x-dev
    projects[wetkit_wetboew][subdir] = custom
    projects[wetkit_wetboew][download][type] = git
    projects[wetkit_wetboew][download][branch] = 7.x-4.x

    projects[wetkit_widgets][version] = 4.x-dev
    projects[wetkit_widgets][subdir] = custom
    projects[wetkit_widgets][download][type] = git
    projects[wetkit_widgets][download][branch] = 7.x-4.x

    projects[wetkit_wysiwyg][version] = 4.x-dev
    projects[wetkit_wysiwyg][subdir] = custom
    projects[wetkit_wysiwyg][download][type] = git
    projects[wetkit_wysiwyg][download][branch] = 7.x-4.x

    ; WxT Foundation (Themes)

    projects[wetkit_ember][version] = 4.x-dev
    projects[wetkit_ember][download][type] = git
    projects[wetkit_ember][download][branch] = 7.x-4.x

    projects[wetkit_bootstrap][version] = 4.x-dev
    projects[wetkit_bootstrap][download][type] = git
    projects[wetkit_bootstrap][download][revision] = b3f803d
    projects[wetkit_bootstrap][download][branch] = 7.x-4.x

    projects[wetkit_shiny][version] = 4.x-dev
    projects[wetkit_shiny][download][type] = git
    projects[wetkit_shiny][download][branch] = 7.x-4.x
            </pre></p>
        </details>
    </li>
</ul>

## Module Makefiles

<ul class="linenums list-unstyled wb-prettify all-pre">
    <li>
        <details>
            <summary>wetkit-admin.make</summary>
            <p><pre class="nowrap">
    ; WetKit Admin Makefile

    api = 2
    core = 7.x

    ; Contrib

    projects[admin_menu][version] = 3.0-rc5
    projects[admin_menu][subdir] = contrib

    projects[admin_views][version] = 1.5
    projects[admin_views][subdir] = contrib

    projects[admin_select][version] = 1.5
    projects[admin_select][subdir] = contrib

    projects[backports][version] = 1.0-alpha1
    projects[backports][subdir] = contrib

    projects[date_popup_authored][version] = 1.2
    projects[date_popup_authored][subdir] = contrib

    projects[jquery_update][version] = 2.7
    projects[jquery_update][subdir] = contrib
    projects[jquery_update][patch][1969244] = http://drupal.org/files/issues/jquery_update-theme-specific-version-1969244-37.patch

    projects[module_filter][version] = 2.0
    projects[module_filter][subdir] = contrib
    projects[module_filter][patch][2445133] = http://drupal.org/files/issues/clear-link-placement-problem-on-modules-admin-page-2445133-1_0.patch

    ; Contrib for WetKit NavBar

    projects[escape_admin][version] = 1.2
    projects[escape_admin][subdir] = contrib

    projects[navbar][version] = 1.6
    projects[navbar][subdir] = contrib
    projects[navbar][patch][2377149] = http://drupal.org/files/issues/navbar_modernizr-2377149-1.patch
    projects[navbar][patch][2477473] = http://drupal.org/files/issues/2477473_navbar_narrownavbarwidth_1.patch

    projects[responsive_preview][version] = 1.1
    projects[responsive_preview][subdir] = contrib
    projects[responsive_preview][patch][2175453] = http://drupal.org/files/issues/responsive.patch
    projects[responsive_preview][patch][2256131] = http://drupal.org/files/issues/responsive_preview-subdir_site_suport-2256131-1.patch
    projects[responsive_preview][patch][2263209] = http://drupal.org/files/issues/responsive_preview-item_list-new.patch
    projects[responsive_preview][patch][2434913] = http://drupal.org/files/issues/unable_to_scroll_down-2434913-1.patch
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-bean.make</summary>
            <p><pre class="nowrap">
    ; WetKit Bean Makefile

    api = 2
    core = 7.x

    ; Modules for WetKit Bean

    projects[bean][version] = 1.9
    projects[bean][subdir] = contrib
    projects[bean][patch][1995770] = http://drupal.org/files/issues/bean-auto-entitylabel-fix-1995770-3.patch
    projects[bean][patch][2295973] = http://drupal.org/files/issues/bean_migration_support-2295973-02.patch
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-breadcrumbs.make</summary>
            <p><pre class="nowrap">
    ; WetKit Breadcrumbs Makefile

    api = 2
    core = 7.x

    ; Modules for WetKit Breadcrumbs

    projects[path_breadcrumbs][version] = 3.3
    projects[path_breadcrumbs][subdir] = contrib
    projects[path_breadcrumbs][patch][2056345] = http://drupal.org/files/issues/translatable_path-2056345-01.patch
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-core.make</summary>
            <p><pre class="nowrap">
    ; WetKit Core Makefile

    api = 2
    core = 7.x

    ; Modules

    projects[advanced_help][version] = 1.3
    projects[advanced_help][subdir] = contrib

    projects[apps][version] = 1.0-rc1
    projects[apps][subdir] = contrib

    projects[better_formats][version] = 1.0-beta1
    projects[better_formats][subdir] = contrib
    projects[better_formats][patch][1717470] = http://drupal.org/files/issues/better_formats_strict_warning-1717470-03.patch
    projects[better_formats][patch][1712360] = http://drupal.org/files/issues/better_formats_description-1712360-02.patch

    projects[ctools][version] = 1.9
    projects[ctools][subdir] = contrib
    projects[ctools][patch][2399313] = http://drupal.org/files/issues/ctools-2399313-1-Relationship-optional-context.patch
    projects[ctools][patch][2401635] = http://drupal.org/files/issues/ctools-views-content-custom-url-1417630-06.patch
    projects[ctools][patch][2265451] = http://drupal.org/files/issues/hide_empty_page_title-2265451-13.patch
    projects[ctools][patch][2437773] = http://drupal.org/files/issues/attached_css_and_js-2437773-18.patch

    projects[date][version] = 2.9
    projects[date][subdir] = contrib

    projects[defaultconfig][version] = 1.0-alpha11
    projects[defaultconfig][subdir] = contrib

    projects[devel][version] = 1.5
    projects[devel][subdir] = contrib

    projects[diff][version] = 3.2
    projects[diff][subdir] = contrib

    projects[elements][version] = 1.4
    projects[elements][subdir] = contrib

    projects[entity][version] = 1.6
    projects[entity][subdir] = contrib
    projects[entity][patch][2020325] = http://drupal.org/files/issues/entity-ctools-content-type-from-context-2020325-24.patch

    projects[entityreference][version] = 1.1
    projects[entityreference][subdir] = contrib

    projects[entityreference_prepopulate][version] = 1.5
    projects[entityreference_prepopulate][subdir] = contrib

    projects[entity_view_mode][version] = 1.0-rc1
    projects[entity_view_mode][subdir] = contrib

    projects[fape][version] = 1.2
    projects[fape][subdir] = contrib

    projects[features][version] = 2.7
    projects[features][subdir] = contrib

    projects[fences][version] = 1.x-dev
    projects[fences][subdir] = contrib
    projects[fences][type] = module
    projects[fences][download][type] = git
    projects[fences][download][revision] = 67206b5
    projects[fences][download][branch] = 7.x-1.x

    projects[field_collection][version] = 1.x-dev
    projects[field_collection][subdir] = contrib
    projects[field_collection][download][type] = git
    projects[field_collection][download][revision] = ae778f2
    projects[field_collection][download][branch] = 7.x-1.x
    projects[field_collection][patch][1344672] = http://drupal.org/files/issues/field_collection-et-1344672-187.patch
    projects[field_collection][patch][2075325] = http://drupal.org/files/issues/field_collection-field_collection_uuid-2075325-3.patch
    projects[field_collection][patch][2298877] = http://drupal.org/files/issues/migration_field_collection-2298877-02.patch

    projects[field_group][version] = 1.4
    projects[field_group][subdir] = contrib

    projects[fontawesome][version] = 2.5
    projects[fontawesome][subdir] = contrib
    projects[fontawesome][patch][2590491] = http://drupal.org/files/issues/wetkit_core-2590491-6.patch

    projects[hierarchical_select][version] = 3.0-beta2
    projects[hierarchical_select][subdir] = contrib

    projects[icon][version] = 1.0-beta6
    projects[icon][subdir] = contrib

    projects[libraries][version] = 2.2
    projects[libraries][subdir] = contrib
    projects[libraries][patch][2352251] = http://drupal.org/files/issues/0001-there-is-no-hook_libraries_paths-it-should-be-hook_l.patch

    projects[link][version] = 1.3
    projects[link][subdir] = contrib
    projects[link][patch][2055111] = http://drupal.org/files/issues/why_is_re_loading_the-2055111-4.patch

    projects[linkchecker][version] = 1.2
    projects[linkchecker][subdir] = contrib
    projects[linkchecker][patch][2340211] = http://drupal.org/files/issues/error_on_submission-2340211-10.patch.txt

    projects[menu_attributes][version] = 1.0-rc3
    projects[menu_attributes][subdir] = contrib

    projects[menu_block][version] = 2.7
    projects[menu_block][subdir] = contrib
    projects[menu_block][patch][2567871] = http://drupal.org/files/issues/support_menu_block_mode_5-2567871-2.patch
    projects[menu_block][patch][2567875] = http://drupal.org/files/issues/support_menu_block_theme_overrides-2567875-2.patch
    projects[menu_block][patch][2282933] = http://drupal.org/files/issues/menu_block-uuid-2282933-23.patch

    projects[password_policy][version] = 1.12
    projects[password_policy][subdir] = contrib

    projects[panelizer][version] = 3.2-beta1
    projects[panelizer][subdir] = contrib

    projects[panels][version] = 3.5
    projects[panels][subdir] = contrib
    projects[panels][patch][1588212] = http://drupal.org/files/issues/panels-1588212-10.patch
    projects[panels][patch][2192355] = http://drupal.org/files/issues/i18n_panels_uuid_undefined-2192355-01.patch
    projects[panels][patch][2253919] = http://drupal.org/files/issues/panels-re-generated-uuids-on-clone.patch
    projects[panels][patch][2508433] = http://drupal.org/files/issues/blocks_dont_support_optional_context-2508433-1.patch

    projects[panopoly_magic][version] = 1.28
    projects[panopoly_magic][subdir] = contrib
    projects[panopoly_magic][patch][2179413] = http://drupal.org/files/issues/panels_undefined_styles-2179413-13.patch

    projects[pathauto][version] = 1.3
    projects[pathauto][subdir] = contrib

    projects[pm_existing_pages][version] = 1.4
    projects[pm_existing_pages][subdir] = contrib

    projects[rules][version] = 2.9
    projects[rules][subdir] = contrib

    projects[splashify][version] = 1.3
    projects[splashify][subdir] = contrib

    projects[strongarm][version] = 2.0
    projects[strongarm][subdir] = contrib

    projects[token][version] = 1.6
    projects[token][subdir] = contrib

    projects[total_control][version] = 2.4
    projects[total_control][subdir] = contrib
    projects[total_control][patch][2134401] = http://drupal.org/files/issues/filtered_html_dashboard-2134401-01.patch
    projects[total_control][patch][2230019] = http://drupal.org/files/issues/array_key_exists_comments-2230019-01.patch

    projects[transliteration][version] = 3.2
    projects[transliteration][subdir] = contrib

    projects[uuid][version] = 1.0-beta1
    projects[uuid][subdir] = contrib
    projects[uuid][patch][2074621] = http://drupal.org/files/uuid_services_field_collection_revisions.patch
    projects[uuid][patch][2121031] = http://drupal.org/files/issues/uuid-empty_file-2121031-1.patch
    projects[uuid][patch][2145567] = http://drupal.org/files/issues/uuid_ctools_context-2145567-16.patch
    projects[uuid][patch][2279081] = http://drupal.org/files/issues/term_access_uuid-2279081-03.patch
    projects[uuid][patch][2391701] = http://drupal.org/files/issues/typeo_in_uuid_services_menu_description-2391701-02.patch

    projects[uuid_features][version] = 1.0-alpha4
    projects[uuid_features][subdir] = contrib
    projects[uuid_features][patch][2153157] = http://drupal.org/files/issues/uuid_features-undefined_index_when_processing_orphanned_bundles-2153157-2.patch

    projects[uuid_link][version] = 1.0-beta3
    projects[uuid_link][subdir] = contrib
    projects[uuid_link][patch][2101455] = http://drupal.org/files/uuid_link_entity_translation-2101455-9.patch
    projects[uuid_link][patch][2484927] = http://drupal.org/files/issues/linkit_uuid-2484927-8.patch

    projects[views][version] = 3.13
    projects[views][subdir] = contrib
    projects[views][patch][1331056] = http://drupal.org/files/issues/views-3.x-dev-issue_1331056-52.patch
    projects[views][patch][1863358] = http://drupal.org/files/1863358-grid-format-striping-8.patch
    projects[views][patch][2037469] = http://drupal.org/files/views-exposed-sorts-2037469-1.patch

    projects[views_autocomplete_filters][version] = 1.2
    projects[views_autocomplete_filters][subdir] = contrib

    projects[views_bootstrap][version] = 3.1
    projects[views_bootstrap][subdir] = contrib

    projects[views_bulk_operations][version] = 3.3
    projects[views_bulk_operations][subdir] = contrib

    projects[workbench][version] = 1.2
    projects[workbench][subdir] = contrib
    projects[workbench][patch][1354320] = http://drupal.org/files/content-creation-permissions-1354320-6.patch
    projects[workbench][patch][1388220] = http://drupal.org/files/workbench-my_edits_view-1388220-14.patch
    projects[workbench][patch][2075467] = http://drupal.org/files/issues/workbench_uuid-2075467-01.patch

    projects[workbench_moderation][version] = 1.x-dev
    projects[workbench_moderation][subdir] = contrib
    projects[workbench_moderation][type] = module
    projects[workbench_moderation][download][type] = git
    projects[workbench_moderation][download][revision] = a90378d
    projects[workbench_moderation][download][branch] = 7.x-1.x
    ; Trivial
    projects[workbench_moderation][patch][1237558] = http://drupal.org/files/double-messages-1237558-7.patch
    projects[workbench_moderation][patch][1732802] = http://drupal.org/files/workbench-moderation-draft-terminology-1732802-1.patch
    projects[workbench_moderation][patch][1785798] = http://drupal.org/files/workbench_moderation-revision-moderation-edit-link-1785798-14.patch
    projects[workbench_moderation][patch][1787214] = http://drupal.org/files/workbench_moderation-vbo-revision-1787214-13.patch
    projects[workbench_moderation][patch][1836680] = http://drupal.org/files/workbench-moderation-solr-index-1836680-1.patch
    projects[workbench_moderation][patch][1919706] = http://drupal.org/files/issues/workbench_moderation-entitymalformed-1919706-3.patch
    ; Extensively Tested
    projects[workbench_moderation][patch][1260112] = http://drupal.org/files/workbench_moderation_is_current-1260112-58.patch
    projects[workbench_moderation][patch][1330562] = http://drupal.org/files/workbench_moderation-entity-cache-1330562-22.patch
    projects[workbench_moderation][patch][1946392] = http://drupal.org/files/et_language-1946392-1.patch
    ; Stable
    projects[workbench_moderation][patch][1279290] = http://drupal.org/files/workbench_moderation-delete-current-unpublished-revision-1279290-16.patch
    projects[workbench_moderation][patch][1402860] = http://drupal.org/files/issues/workbench_moderation-panelizer_revisions-1402860-39.patch
    projects[workbench_moderation][patch][1408858] = http://drupal.org/files/default-moderation-state-1408858-12.patch
    projects[workbench_moderation][patch][1436260] = http://drupal.org/files/issues/1436260-workbench_moderation-states-node_save-999.patch
    projects[workbench_moderation][patch][2098151] = http://drupal.org/files/playnicewithpanels-2098151-01.patch
    projects[workbench_moderation][patch][2070389] = http://drupal.org/files/workbench_moderation-correctly_update_status-2070389-2.patch
    projects[workbench_moderation][patch][2099151] = http://drupal.org/files/workbench_moderation-better_migration_support-1445824-11.patch

    ; Libraries

    libraries[backbone][download][type] = get
    libraries[backbone][download][url] = https://github.com/jashkenas/backbone/archive/1.1.0.zip
    libraries[backbone][patch][2315315] = http://drupal.org/files/issues/backbone_source_map_distro-2315315-05.patch

    libraries[jstorage][download][type] = get
    libraries[jstorage][download][url] = https://github.com/andris9/jStorage/archive/v0.4.11.tar.gz

    libraries[underscore][download][type] = get
    libraries[underscore][download][url] = https://github.com/jashkenas/underscore/archive/1.5.2.zip
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-deployment.make</summary>
            <p><pre class="nowrap">
    ; WetKit Deployment Makefile

    api = 2
    core = 7.x

    ; Modules for WetKit Deployment

    projects[deploy][version] = 2.0-alpha3
    projects[deploy][subdir] = contrib
    projects[deploy][patch][1604938] = http://drupal.org/files/deploy-1604938_1.patch
    projects[deploy][patch][2052767] = http://drupal.org/files/deploy-undefined_variable_user-2052767-3.patch
    projects[deploy][patch][2092335] = http://drupal.org/files/deploy_new_alter_hook-2092335-4.patch
    projects[deploy][patch][2136595] = http://drupal.org/files/issues/helpful_helper_text-2136595-1.patch

    projects[deploy_services_client][version] = 1.0-beta2
    projects[deploy_services_client][subdir] = contrib

    projects[entity_dependency][version] = 1.0-alpha2
    projects[entity_dependency][subdir] = contrib
    projects[entity_dependency][patch][1589794] = http://drupal.org/files/entity_dependency_iterator_documentation-1589794-1.patch
    projects[entity_dependency][patch][1590280] = http://drupal.org/files/entity_dependency_comment_typos-1590280-1.patch
    projects[entity_dependency][patch][1772372] = http://drupal.org/files/documentation-1772372.patch
    projects[entity_dependency][patch][2051797] = http://drupal.org/files/2051797-file-bug-1.patch

    projects[entity_menu_links][version] = 1.0-alpha2
    projects[entity_menu_links][subdir] = contrib
    projects[entity_menu_links][patch][2089133] = http://drupal.org/files/issues/wetkit_deployment_entity_menu_links_create_new_menu-2089133-12.patch

    projects[environment_indicator][version] = 2.5
    projects[environment_indicator][subdir] = contrib

    projects[quicktabs][version] = 3.6
    projects[quicktabs][subdir] = contrib

    projects[services][version] = 3.12
    projects[services][subdir] = contrib
    projects[services][patch][2475119] = http://drupal.org/files/issues/services_wrong_function_call_in_node_resource-2475119-99.patch
    projects[services][patch][2480763] = http://drupal.org/files/issues/services_resource_admin_ui_styles_inheriting_from_theme-2480763-99.patch

    projects[shared_content][version] = 1.0-beta2
    projects[shared_content][subdir] = contrib

    projects[uuid_redirect][version] = 1.x-dev
    projects[uuid_redirect][subdir] = contrib
    projects[uuid_redirect][type] = module
    projects[uuid_redirect][download][type] = git
    projects[uuid_redirect][download][revision] = ce1ab849
    projects[uuid_redirect][download][branch] = 7.x-1.x
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-images.make</summary>
            <p><pre class="nowrap">
    ; WetKit Images Makefile

    api = 2
    core = 7.x

    ; Contrib

    projects[breakpoints][version] = 1.3
    projects[breakpoints][subdir] = contrib
    projects[breakpoints][patch][2378449] = http://drupal.org/files/issues/2415363-breakpoints-menu_rebuild-13.patch

    projects[picture][version] = 2.13
    projects[picture][subdir] = contrib
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-language.make</summary>
            <p><pre class="nowrap">
    ; WetKit Language Makefile

    api = 2
    core = 7.x

    ; Contrib

    projects[entity_translation][version] = 1.0-beta4
    projects[entity_translation][subdir] = contrib
    projects[entity_translation][patch][1989084] = http://drupal.org/files/issues/entity_translation-fix-i18n-menu-item-validate-1989084-8.patch
    projects[entity_translation][patch][2166157] = http://drupal.org/files/issues/edit_draft-2557443-18.patch
    projects[entity_translation][patch][2203801] = http://drupal.org/files/issues/i18n_taxonomy_integration-2203801-5.patch
    projects[entity_translation][patch][2305547] = http://drupal.org/files/issues/entity_translation-more-defensive-code.patch
    projects[entity_translation][patch][2415189] = http://drupal.org/files/issues/entity_translation_2415189_0.patch
    projects[entity_translation][patch][2452279] = http://drupal.org/files/issues/entity_translation-duplicated-langcode-variable-edit-access.patch

    projects[features_translations][version] = 2.0
    projects[features_translations][subdir] = contrib

    projects[i18n][version] = 1.13
    projects[i18n][subdir] = contrib

    projects[i18nviews][version] = 3.x-dev
    projects[i18nviews][type] = module
    projects[i18nviews][subdir] = contrib
    projects[i18nviews][download][type] = git
    projects[i18nviews][download][revision] = fdc8c33
    projects[i18nviews][download][branch] = 7.x-3.x
    projects[i18nviews][patch][1788832] = http://drupal.org/files/issues/transformed-contextual-filter-fix-178832-10.patch

    projects[language_switch][version] = 1.0-alpha2
    projects[language_switch][subdir] = contrib

    projects[l10n_client][version] = 1.3
    projects[l10n_client][subdir] = contrib

    projects[l10n_update][version] = 1.1
    projects[l10n_update][subdir] = contrib

    projects[potx][version] = 1.0
    projects[potx][subdir] = contrib

    projects[stringoverrides][version] = 1.8
    projects[stringoverrides][subdir] = contrib

    projects[title][version] = 1.x-dev
    projects[title][type] = module
    projects[title][subdir] = contrib
    projects[title][download][type] = git
    projects[title][download][revision] = 32e8016
    projects[title][download][branch] = 7.x-1.x

    projects[variable][version] = 2.5
    projects[variable][subdir] = contrib

    projects[webform_localization][version] = 4.0-alpha14
    projects[webform_localization][subdir] = contrib
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-metatag.make</summary>
            <p><pre class="nowrap">
    ; WetKit Metatag Makefile

    api = 2
    core = 7.x

    ; Modules for WetKit Metatag

    projects[metatag][version] = 1.7
    projects[metatag][subdir] = contrib
    projects[metatag][patch][1986032] = http://drupal.org/files/issues/metatag-n2546636-4.patch
    projects[metatag][patch][2113501] = http://drupal.org/files/issues/metatag-n2113501-10.patch
    projects[metatag][patch][2546636] = http://drupal.org/files/issues/twitter-n1986032-68.patch
    projects[metatag][patch][2560649] = http://drupal.org/files/issues/metatag-n2560649-3.patch
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-migrate.make</summary>
            <p><pre class="nowrap">
    ; WetKit Migrate Makefile

    api = 2
    core = 7.x

    ; Modules needed for Migration

    projects[migrate][version] = 2.8
    projects[migrate][type] = module
    projects[migrate][subdir] = contrib
    projects[migrate][patch][2290027] = http://drupal.org/files/issues/migrate_uuid_keep-2290027-02.patch

    projects[migrate_extras][version] = 2.5
    projects[migrate_extras][type] = module
    projects[migrate_extras][subdir] = contrib
    projects[migrate_extras][patch][2126725] = http://drupal.org/files/issues/migrate_media_attributes-2126725-01.patch

    ; Libraries

    libraries[spyc][download][type] = get
    libraries[spyc][download][url] = https://github.com/mustangostang/spyc/archive/0.5.1.tar.gz

    libraries[querypath][download][type] = git
    libraries[querypath][download][branch] = 3.x
    libraries[querypath][download][revision] = eeb67cc
    libraries[querypath][download][url] = https://github.com/technosophos/querypath.git
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-og.make</summary>
            <p><pre class="nowrap">
    ; WetKit Organic Groups Makefile

    api = 2
    core = 7.x

    ; Modules for WetKit Organic Groups

    projects[og][version] = 2.7
    projects[og][subdir] = contrib
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-search.make</summary>
            <p><pre class="nowrap">
    ; WetKit Search Makefile

    api = 2
    core = 7.x

    ; Facet API

    projects[date_facets][version] = 1.x-dev
    projects[date_facets][type] = module
    projects[date_facets][subdir] = contrib
    projects[date_facets][download][type] = git
    projects[date_facets][download][revision] = f2951ca
    projects[date_facets][download][branch] = 7.x-1.x
    projects[date_facets][patch][2016601] = http://drupal.org/files/issues/date_facets-date-facets-displayed-as-keys-2016601-6.patch
    projects[date_facets][patch][2280631] = http://drupal.org/files/issues/date_facets_beta2_dev_Missing_argument_2_Undifined_Index_index_id_field-2280631-5.patch

    projects[facetapi][version] = 1.5
    projects[facetapi][subdir] = contrib
    projects[facetapi][patch][2378693] = http://drupal.org/files/issues/notice_undefined-2378693-3.patch

    projects[facetapi_bonus][version] = 1.x-dev
    projects[facetapi_bonus][type] = module
    projects[facetapi_bonus][subdir] = contrib
    projects[facetapi_bonus][download][type] = git
    projects[facetapi_bonus][download][revision] = 1f2e720
    projects[facetapi_bonus][download][branch] = 7.x-1.x
    projects[facetapi_bonus][patch][1844680] = http://drupal.org/files/facetapi-warning.patch

    projects[facetapi_i18n][version] = 1.0-beta2
    projects[facetapi_i18n][subdir] = contrib
    projects[facetapi_i18n][patch][1741444] = http://drupal.org/files/double-encoding-fix-1741444-9.patch
    projects[facetapi_i18n][patch][2027055] = http://drupal.org/files/missing_reset_filters-2027055-01.patch

    ; Contrib Modules

    projects[custom_search][version] = 1.18
    projects[custom_search][subdir] = contrib

    projects[search404][version] = 1.3
    projects[search404][subdir] = contrib
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-webform.make</summary>
            <p><pre class="nowrap">
    ; WetKit Webform Makefile

    api = 2
    core = 7.x

    ; Modules

    projects[webform][version] = 4.11
    projects[webform][subdir] = contrib
    projects[webform][patch][2076483] = http://drupal.org/files/issues/webform_uuid-2076483-5.patch
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-wetboew.make</summary>
            <p><pre class="nowrap">
    ; WetKit WETBOEW Makefile

    api = 2
    core = 7.x

    ; Library for the Web Experience Toolkit jQuery Framework

    libraries[wet-boew][download][type] = get
    libraries[wet-boew][download][url] = https://github.com/wet-boew/wet-boew-cdn/archive/v4.0.18.tar.gz

    libraries[theme-wet-boew][download][type] = get
    libraries[theme-wet-boew][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.18-theme-wet-boew.tar.gz

    libraries[theme-base][download][type] = get
    libraries[theme-base][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.18-theme-base.tar.gz

    libraries[theme-gc-intranet][download][type] = get
    libraries[theme-gc-intranet][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.18-theme-gc-intranet.tar.gz

    libraries[theme-gcwu-fegc][download][type] = get
    libraries[theme-gcwu-fegc][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.18-theme-gcwu-fegc.tar.gz

    libraries[theme-gcweb][download][type] = get
    libraries[theme-gcweb][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.18-gcweb.tar.gz

    libraries[theme-ogpl][download][type] = get
    libraries[theme-ogpl][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.18-theme-ogpl.tar.gz
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-widgets.make</summary>
            <p><pre class="nowrap">
    ; WetKit Widgets Makefile

    api = 2
    core = 7.x

    projects[file_entity][version] = 2.0-beta2
    projects[file_entity][subdir] = contrib
    projects[file_entity][patch][2000934] = http://drupal.org/files/issues/allow_selection_of-2000934-30.patch
    projects[file_entity][patch][2198973] = http://drupal.org/files/issues/file_entity_override_widgets-2198973-01.patch

    projects[file_lock][version] = 2.0
    projects[file_lock][subdir] = contrib

    projects[media][version] = 2.0-beta1
    projects[media][subdir] = contrib
    projects[media][patch][2084287] = http://drupal.org/files/issues/media-file-name-focus-2084287-2.patch
    projects[media][patch][2187771] = http://drupal.org/files/issues/media_alt_attributes-2129273-24.patch
    projects[media][patch][2126697] = http://drupal.org/files/issues/media_wysiwyg_2126697-53.patch
    projects[media][patch][2272567] = http://drupal.org/files/issues/media_dialog_appears-2272567-8.patch
    projects[media][patch][2308487] = http://drupal.org/files/issues/media-alt-title-double-encoded-2308487-2.patch
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-wysiwyg.make</summary>
            <p><pre class="nowrap">
    ; WetKit WYSIWYG Makefile

    api = 2
    core = 7.x

    ; Contrib

    projects[linkit][version] = 3.4
    projects[linkit][subdir] = contrib
    projects[linkit][patch][2381549] = http://drupal.org/files/issues/linkit_improvements-2381549-8.patch

    projects[wysiwyg][version] = 2.x-dev
    projects[wysiwyg][subdir] = contrib
    projects[wysiwyg][download][type] = git
    projects[wysiwyg][download][revision] = 37dc07d
    projects[wysiwyg][download][branch] = 7.x-2.x
    projects[wysiwyg][patch][1786732] = http://drupal.org/files/wysiwyg-arbitrary_image_paths_markitup-1786732-3.patch

    ; Include our Editors

    libraries[ckeditor][download][type] = get
    libraries[ckeditor][download][url] = http://download.cksource.com/CKEditor/CKEditor/CKEditor%204.3.5/ckeditor_4.3.5_standard.zip

    libraries[markitup][download][type] = get
    libraries[markitup][download][url] = https://github.com/markitup/1.x/tarball/master
    libraries[markitup][patch][1715642] = http://drupal.org/files/1715642-adding-html-set-markitup-editor.patch
            </pre></p>
        </details>
    </li>
</ul>

## Theme Makefiles

<ul class="linenums list-unstyled wb-prettify all-pre">
    <li>
        <details>
            <summary>wetkit-ember.make</summary>
            <p><pre class="nowrap">
    ; WetKit Ember Makefile

    core = 7.x
    api = 2

    ; Theme(s)

    projects[ember][version] = 2.0-alpha3
    projects[ember][type] = theme
    projects[ember][patch][2576461] = http://drupal.org/files/issues/ember_logic_causing-2576461-3.patch
            </pre></p>
        </details>
    </li>
    <li>
        <details>
            <summary>wetkit-bootstrap.make</summary>
            <p><pre class="nowrap">
    ; WetKit Bootstrap Makefile

    core = 7.x
    api = 2

    ; Theme(s)

    projects[bootstrap][version] = 3.1-beta2
    projects[bootstrap][type] = theme
    projects[bootstrap][patch][2098551] = http://drupal.org/files/issues/registry_alter_does_not-2098551-42.patch
    projects[bootstrap][patch][2311463] = http://drupal.org/files/issues/patch_bootstrap_wetkit-2311463-05.patch
    projects[bootstrap][patch][2369235] = http://drupal.org/files/issues/bootstrap_password_policy-2369235-01.patch
    projects[bootstrap][patch][2404405] = http://drupal.org/files/issues/bootstrap-modal-nav-offset-jslint-2404405-2.patch
    projects[bootstrap][patch][2416485] = http://drupal.org/files/issues/preg_grep_in-2416485-4.patch
            </pre></p>
        </details>
    </li>
</ul>


<!-- Links Referenced -->

[drush_make]:          http://drushcommands.com/drush-6x/make/make
