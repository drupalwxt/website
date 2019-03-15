+++
draft = false
title = "Makefiles for Drupal WxT (D7)"
description="Makefiles which form the building blocks and dependencies for Drupal WxT."
language = "en"
tags = [
    "wxt",
]
date = "2015-01-13T13:10:52-05:00"
type = "single"
+++

<div class="alert alert-info">
<h4>Important</h4>
<p>These instructions are only valid for Drupal 7. For Drupal 8 workflow please
consult the <a href="{{< relref "/workflow/wxt.md" >}}">Workflow for Drupal 8
</a></p>
</div>


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

    projects[drupal][version] = 7.54
    projects[drupal][type] = core

    ; Patches for Drupal Core
    projects[drupal][patch][405360] = http://drupal.org/files/issues/aria-describedby_2.patch
    projects[drupal][patch][460408] = http://drupal.org/files/issues/menu-access_unpublished-nodes_460408-157.patch
    projects[drupal][patch][728702] = http://drupal.org/files/issues/install-redirect-on-empty-database-728702-36.patch
    projects[drupal][patch][865536] = http://drupal.org/files/drupal-865536-204.patch
    projects[drupal][patch][911354] = http://drupal.org/files/911354-drupal-profile-85.patch
    projects[drupal][patch][998898] = http://drupal.org/files/issues/998898-63chars-identifier-limit-nomd5-D7-75.patch
    projects[drupal][patch][1470656] = http://drupal.org/files/drupal-1470656-14.patch
    projects[drupal][patch][1710656] = http://drupal.org/files/drupal-1710656-3-skip-hidden-menu-items-D7.patch
    projects[drupal][patch][1772316] = http://drupal.org/files/drupal7-allow_change_system-requirements-1772316-18.patch
    projects[drupal][patch][2289867] = http://drupal.org/files/issues/D7_port_fix_w3c_url_validation_html5_changes-2289867-1.patch
    projects[drupal][patch][2383823] = https://www.drupal.org/files/issues/2383823-check_name_empty-26.patch
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

    projects[wetkit_admin][version] = 4.6
    projects[wetkit_admin][subdir] = custom

    projects[wetkit_bean][version] = 4.7
    projects[wetkit_bean][subdir] = custom

    projects[wetkit_breadcrumbs][version] = 4.6
    projects[wetkit_breadcrumbs][subdir] = custom

    projects[wetkit_core][version] = 4.13
    projects[wetkit_core][subdir] = custom

    projects[wetkit_demo][version] = 4.3
    projects[wetkit_demo][subdir] = custom

    projects[wetkit_deployment][version] = 4.14
    projects[wetkit_deployment][subdir] = custom

    projects[wetkit_images][version] = 4.5
    projects[wetkit_images][subdir] = custom

    projects[wetkit_language][version] = 4.11
    projects[wetkit_language][subdir] = custom

    projects[wetkit_layouts][version] = 4.5
    projects[wetkit_layouts][subdir] = custom

    projects[wetkit_menu][version] = 4.6
    projects[wetkit_menu][subdir] = custom

    projects[wetkit_metatag][version] = 4.12
    projects[wetkit_metatag][subdir] = custom

    projects[wetkit_migrate][version] = 4.5
    projects[wetkit_migrate][subdir] = custom

    projects[wetkit_og][version] = 4.2
    projects[wetkit_og][subdir] = custom

    projects[wetkit_pages][version] = 4.3
    projects[wetkit_pages][subdir] = custom

    projects[wetkit_search][version] = 4.3
    projects[wetkit_search][subdir] = custom

    projects[wetkit_test][version] = 4.10
    projects[wetkit_test][subdir] = custom

    projects[wetkit_theme][version] = 4.5
    projects[wetkit_theme][subdir] = custom

    projects[wetkit_users][version] = 4.2
    projects[wetkit_users][subdir] = custom

    projects[wetkit_webform][version] = 4.13
    projects[wetkit_webform][subdir] = custom

    projects[wetkit_wetboew][version] = 4.4
    projects[wetkit_wetboew][subdir] = custom

    projects[wetkit_widgets][version] = 4.8
    projects[wetkit_widgets][subdir] = custom

    projects[wetkit_wysiwyg][version] = 4.8
    projects[wetkit_wysiwyg][subdir] = custom


    ; WxT Foundation (Themes)

    projects[wetkit_ember][version] = 4.4
    projects[wetkit_ember][type] = theme

    projects[wetkit_bootstrap][version] = 4.12
    projects[wetkit_bootstrap][type] = theme

    projects[wetkit_shiny][version] = 4.0
    projects[wetkit_shiny][type] = theme
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

    projects[admin_views][version] = 1.6
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

    projects[navbar][version] = 1.7
    projects[navbar][subdir] = contrib
    projects[navbar][patch][2377149] = http://drupal.org/files/issues/navbar_modernizr-2377149-1.patch
    projects[navbar][patch][2644930] = http://drupal.org/files/issues/navbar_link_language-2644930-3.patch

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

    projects[bean][version] = 1.11
    projects[bean][subdir] = contrib
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
    projects[path_breadcrumbs][patch][2614240] = http://drupal.org/files/issues/remove_bootstrap_3-2614240-2.patch
    projects[path_breadcrumbs][patch][2801613] = https://www.drupal.org/files/issues/support_for_html_em-2801613-6.patch
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

    projects[apps][version] = 1.0
    projects[apps][subdir] = contrib

    projects[better_formats][version] = 1.0-beta2
    projects[better_formats][subdir] = contrib

    projects[ctools][version] = 1.12
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

    projects[diff][version] = 3.3
    projects[diff][subdir] = contrib

    projects[elements][version] = 1.4
    projects[elements][subdir] = contrib

    projects[entity][version] = 1.8
    projects[entity][subdir] = contrib
    projects[entity][patch][2020325] = http://drupal.org/files/issues/entity-ctools-content-type-from-context-2020325-24.patch

    projects[entityreference][version] = 1.2
    projects[entityreference][subdir] = contrib

    projects[entityreference_prepopulate][version] = 1.7
    projects[entityreference_prepopulate][subdir] = contrib

    projects[entity_view_mode][version] = 1.0-rc1
    projects[entity_view_mode][subdir] = contrib

    projects[fape][version] = 1.2
    projects[fape][subdir] = contrib

    projects[features][version] = 2.10
    projects[features][subdir] = contrib

    projects[fences][version] = 1.2
    projects[fences][subdir] = contrib

    projects[field_collection][version] = 1.0-beta12
    projects[field_collection][subdir] = contrib
    projects[field_collection][patch][2075325] = http://drupal.org/files/issues/field_collection_uuid-2075325-18.patch
    projects[field_collection][patch][2075326] = http://drupal.org/files/issues/field_collection_uuid_services-2075325-18.patch

    projects[field_group][version] = 1.5
    projects[field_group][subdir] = contrib
    projects[field_group][patch][2649648] = http://drupal.org/files/issues/php7_uniform_variable-2649648-5.patch

    projects[fontawesome][version] = 2.6
    projects[fontawesome][subdir] = contrib
    projects[fontawesome][patch][2590491] = http://drupal.org/files/issues/wetkit_core-2590491-6.patch

    projects[hierarchical_select][version] = 3.0-beta7
    projects[hierarchical_select][subdir] = contrib
    projects[hierarchical_select][patch][2748479] = http://drupal.org/files/issues/uncaught_syntax_error-2748479-2.patch
    projects[hierarchical_select][patch][2719141] = http://drupal.org/files/issues/undefined_index_tid_in-2719141-19.patch
    projects[hierarchical_select][patch][2764871] = http://drupal.org/files/issues/feature-code-export-error-2764871-3.patch

    projects[icon][version] = 1.0-rc1
    projects[icon][subdir] = contrib

    projects[libraries][version] = 2.3
    projects[libraries][subdir] = contrib

    projects[link][version] = 1.4
    projects[link][subdir] = contrib
    projects[link][patch][2428185] = http://drupal.org/files/issues/link-broken-relative-urls-with-language-prefix-2428185-14.patch

    projects[linkchecker][version] = 1.3
    projects[linkchecker][subdir] = contrib

    projects[menu_attributes][version] = 1.0
    projects[menu_attributes][subdir] = contrib

    projects[menu_block][version] = 2.7
    projects[menu_block][subdir] = contrib
    projects[menu_block][patch][2567871] = http://drupal.org/files/issues/support_menu_block_mode_5-2567871-2.patch
    projects[menu_block][patch][2567875] = http://drupal.org/files/issues/argument_3_passed_to-2687299-3.patch
    projects[menu_block][patch][2282933] = http://drupal.org/files/issues/menu_block-uuid-2282933-23.patch
    projects[menu_block][patch][2644630] = http://drupal.org/files/issues/menu_block_block-2644630-2.patch

    projects[password_policy][version] = 1.12
    projects[password_policy][subdir] = contrib
    projects[password_policy][patch][2571139] = http://drupal.org/files/issues/password_policy-7.x-1.x-fix_postgres_fatal_error_unblocking_user-2571139-4.patch
    projects[password_policy][patch][2688123] = http://drupal.org/files/issues/password_policy-undefined-property-original-2688123.patch

    projects[panelizer][version] = 3.4
    projects[panelizer][subdir] = contrib
    projects[panelizer][patch][1549608] = http://drupal.org/files/issues/panelizer-n1549608-26.patch
    projects[panelizer][patch][2788633] = http://drupal.org/files/issues/panelizer_update_7120-2788633-7.patch

    projects[panels][version] = 3.9
    projects[panels][subdir] = contrib
    projects[panels][patch][1402860] = http://drupal.org/files/issues/panelizer_is-1402860-82-fix-ipe-end-js-alert.patch
    projects[panels][patch][2192355] = http://drupal.org/files/issues/i18n_panels_uuid_undefined-2192355-01.patch
    projects[panels][patch][2253919] = http://drupal.org/files/issues/the_uuids_of_cloned-2253919-24.patch
    projects[panels][patch][2508433] = http://drupal.org/files/issues/blocks_dont_support_optional_context-2508433-1.patch

    projects[panopoly_magic][version] = 1.41
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

    projects[token][version] = 1.7
    projects[token][subdir] = contrib
    projects[token][patch][961130] = http://drupal.org/files/issues/tokens_dropdown_arrow-2619078-19.patch
    projects[token][patch][2023423] = http://drupal.org/files/issues/token-2023423-11.patch

    projects[total_control][version] = 2.4
    projects[total_control][subdir] = contrib
    projects[total_control][patch][2134401] = http://drupal.org/files/issues/filtered_html_dashboard-2134401-01.patch
    projects[total_control][patch][2230019] = http://drupal.org/files/issues/array_key_exists_comments-2230019-01.patch

    projects[transliteration][version] = 3.2
    projects[transliteration][subdir] = contrib

    projects[uuid][version] = 1.0-beta2
    projects[uuid][subdir] = contrib
    projects[uuid][patch][2074621] = http://drupal.org/files/uuid_services_field_collection_revisions.patch
    projects[uuid][patch][2145567] = http://drupal.org/files/issues/uuid_ctools_context-2145567-16.patch
    projects[uuid][patch][2279081] = http://drupal.org/files/issues/term_access_uuid-2279081-03.patch

    projects[uuid_features][version] = 1.0-rc1
    projects[uuid_features][subdir] = contrib

    projects[uuid_link][version] = 1.0-beta3
    projects[uuid_link][subdir] = contrib
    projects[uuid_link][patch][2101455] = http://drupal.org/files/uuid_link_entity_translation-2101455-9.patch
    projects[uuid_link][patch][2484927] = http://drupal.org/files/issues/linkit_uuid-2484927-8.patch

    projects[views][version] = 3.14
    projects[views][subdir] = contrib
    projects[views][patch][1189550] = http://drupal.org/files/issues/views_1189550_escape_rss_feed_title.patch
    projects[views][patch][1331056] = http://drupal.org/files/issues/views-3.x-dev-issue_1331056-52.patch
    projects[views][patch][1863358] = http://drupal.org/files/1863358-grid-format-striping-8.patch
    projects[views][patch][2037469] = http://drupal.org/files/views-exposed-sorts-2037469-1.patch
    projects[views][patch][2071607] = http://drupal.org/files/issues/saving_a_view_causes-2071607-17.patch

    projects[views_autocomplete_filters][version] = 1.2
    projects[views_autocomplete_filters][subdir] = contrib

    projects[views_bootstrap][version] = 3.1
    projects[views_bootstrap][subdir] = contrib

    projects[views_bulk_operations][version] = 3.3
    projects[views_bulk_operations][subdir] = contrib
    projects[views_bulk_operations][patch][2551301] = http://drupal.org/files/issues/multiple_vbo_views_on-2551301-6.patch
    projects[views_bulk_operations][patch][2608360] = http://drupal.org/files/issues/vbo-fix-select-all-2608360-1-7.x.patch

    projects[workbench][version] = 1.2
    projects[workbench][subdir] = contrib
    projects[workbench][patch][1354320] = http://drupal.org/files/content-creation-permissions-1354320-6.patch
    projects[workbench][patch][1388220] = http://drupal.org/files/workbench-my_edits_view-1388220-14.patch
    projects[workbench][patch][2075467] = http://drupal.org/files/issues/workbench_uuid-2075467-01.patch

    projects[workbench_moderation][version] = 1.4
    projects[workbench_moderation][subdir] = contrib
    projects[workbench_moderation][patch][2098151] = http://drupal.org/files/playnicewithpanels-2098151-01.patch
    projects[workbench_moderation][patch][2099151] = http://drupal.org/files/workbench_moderation-better_migration_support-1445824-11.patch
    projects[workbench_moderation][patch][2308095] = http://drupal.org/files/issues/workbench_moderation-pathauto_alias_issue-2308095-20.patch
    projects[workbench_moderation][patch][2308096] = http://drupal.org/files/issues/view_all_unpublished-1492118-78.patch
    projects[workbench_moderation][patch][2308097] = http://drupal.org/files/issues/workbench_moderation-optimize_node_revision_history-1408838-67.patch
    projects[workbench_moderation][patch][2428371] = http://drupal.org/files/issues/upgrade_from_1_3_to_1_4-2428371-42.patch
    projects[workbench_moderation][patch][2633456] = http://drupal.org/files/issues/workbench_moderation-2633456-26.patch
    projects[workbench_moderation][patch][2662600] = http://drupal.org/files/issues/workbench_moderation-2662600-3.patch

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

    projects[deploy][version] = 2.0-beta2
    projects[deploy][subdir] = contrib
    projects[deploy][patch][1604938] = http://drupal.org/files/deploy-1604938_1.patch
    projects[deploy][patch][2092335] = http://drupal.org/files/deploy_new_alter_hook-2092335-4.patch
    projects[deploy][patch][2136595] = http://drupal.org/files/issues/helpful_helper_text-2136595-1.patch
    projects[deploy][patch][2604656] = http://drupal.org/files/issues/catch_exceptions-2604656-3.patch

    projects[deploy_plus][version] = 2.5
    projects[deploy_plus][subdir] = contrib
    projects[deploy_plus][patch][2638866] = http://drupal.org/files/issues/ctools_content_type-2638866-3.patch
    projects[deploy_plus][patch][2638916] = http://drupal.org/files/issues/align_deployment-2638916-14.patch
    projects[deploy_plus][patch][2638918] = http://drupal.org/files/issues/align_deployment-2638916-18.patch

    projects[deploy_services_client][version] = 1.0-beta2
    projects[deploy_services_client][subdir] = contrib
    projects[deploy_services_client][patch][2630504] = http://drupal.org/files/issues/support_for-2630504-2.patch

    projects[entity_dependency][version] = 1.0-alpha2
    projects[entity_dependency][subdir] = contrib
    projects[entity_dependency][patch][1589794] = http://drupal.org/files/entity_dependency_iterator_documentation-1589794-1.patch
    projects[entity_dependency][patch][1590280] = http://drupal.org/files/entity_dependency_comment_typos-1590280-1.patch
    projects[entity_dependency][patch][1772372] = http://drupal.org/files/documentation-1772372.patch
    projects[entity_dependency][patch][2051797] = http://drupal.org/files/2051797-file-bug-1.patch

    projects[entity_menu_links][version] = 1.0-alpha3
    projects[entity_menu_links][subdir] = contrib
    projects[entity_menu_links][patch][2622230] = http://drupal.org/files/issues/entity_menu_links-sqlsrv_PDOException_keyword-2622230-2.patch
    projects[entity_menu_links][patch][2723471] = http://drupal.org/files/issues/megamenu_system_path-2723471-11.patch

    projects[environment_indicator][version] = 2.8
    projects[environment_indicator][subdir] = contrib
    projects[environment_indicator][patch][2207897] = http://drupal.org/files/issues/environment_indicator-2207897-9.patch

    projects[quicktabs][version] = 3.6
    projects[quicktabs][subdir] = contrib
    projects[quicktabs][patch][1454486] = http://drupal.org/files/issues/quicktabs-tab-history-1454486-35.patch

    projects[services][version] = 3.18
    projects[services][subdir] = contrib

    projects[shared_content][version] = 1.0-beta2
    projects[shared_content][subdir] = contrib
    projects[shared_content][patch][2628240] = http://drupal.org/files/issues/syndicated_to_site-2628240-5.patch

    projects[uuid_redirect][version] = 1.0-alpha1
    projects[uuid_redirect][subdir] = contrib
    projects[uuid_redirect][patch][1344672] = http://drupal.org/files/issues/patch_uuid_redirect_so-2704071-2.patch
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

    projects[breakpoints][version] = 1.4
    projects[breakpoints][subdir] = contrib

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

    projects[entity_translation][version] = 1.0-beta5
    projects[entity_translation][subdir] = contrib
    projects[entity_translation][patch][2557429] = http://drupal.org/files/issues/static_cache_for-2557429-17.patch
    projects[entity_translation][patch][2734295] = http://drupal.org/files/issues/entity_translation-2734295-4.patch

    projects[features_translations][version] = 2.0
    projects[features_translations][subdir] = contrib

    projects[i18n][version] = 1.15
    projects[i18n][subdir] = contrib

    projects[i18nviews][version] = 3.0-alpha1
    projects[i18nviews][subdir] = contrib
    projects[i18nviews][patch][1788832] = http://drupal.org/files/issues/transformed-contextual-filter-fix-178832-10.patch

    projects[language_switch][version] = 1.0-alpha2
    projects[language_switch][subdir] = contrib

    projects[l10n_client][version] = 1.3
    projects[l10n_client][subdir] = contrib
    projects[l10n_client][patch][2191771] = http://drupal.org/files/issues/l10n_client-browser_is-2191771-17.patch

    projects[l10n_update][version] = 1.1
    projects[l10n_update][subdir] = contrib

    projects[potx][version] = 1.0
    projects[potx][subdir] = contrib

    projects[stringoverrides][version] = 1.8
    projects[stringoverrides][subdir] = contrib

    projects[title][version] = 1.0-alpha9
    projects[title][subdir] = contrib

    projects[variable][version] = 2.5
    projects[variable][subdir] = contrib

    projects[webform_localization][version] = 4.10
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

    ; Module(s) for WetKit Metatag

    projects[metatag][version] = 1.20
    projects[metatag][subdir] = contrib
    projects[metatag][patch][2648494] = http://drupal.org/files/issues/metatag_html_entities-2648494-2.patch
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
    projects[migrate][patch][2654222] = http://drupal.org/files/issues/migrate-php7-uniform-variable-syntax.patch

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

    projects[og][version] = 2.9
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

    projects[date_facets][version] = 1.0
    projects[date_facets][subdir] = contrib

    projects[facetapi][version] = 1.5
    projects[facetapi][subdir] = contrib
    projects[facetapi][patch][2378693] = http://drupal.org/files/issues/notice_undefined-2378693-3.patch

    projects[facetapi_bonus][version] = 1.3-rc3
    projects[facetapi_bonus][subdir] = contrib

    projects[facetapi_i18n][version] = 1.0-beta2
    projects[facetapi_i18n][subdir] = contrib
    projects[facetapi_i18n][patch][1741444] = http://drupal.org/files/double-encoding-fix-1741444-9.patch
    projects[facetapi_i18n][patch][2027055] = http://drupal.org/files/missing_reset_filters-2027055-01.patch

    ; Contrib Modules

    projects[custom_search][version] = 1.20
    projects[custom_search][subdir] = contrib

    projects[search404][version] = 1.4
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

    projects[webform][version] = 4.14
    projects[webform][subdir] = contrib

    projects[webform_uuid][version] = 1.0
    projects[webform_uuid][subdir] = contrib
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
    libraries[wet-boew][download][url] = https://github.com/wet-boew/wet-boew-cdn/archive/v4.0.23.tar.gz

    libraries[theme-wet-boew][download][type] = get
    libraries[theme-wet-boew][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.23-theme-wet-boew.tar.gz

    libraries[theme-base][download][type] = get
    libraries[theme-base][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.23-theme-base.tar.gz

    libraries[theme-gc-intranet][download][type] = get
    libraries[theme-gc-intranet][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.23-theme-gc-intranet.tar.gz

    libraries[theme-gcwu-fegc][download][type] = get
    libraries[theme-gcwu-fegc][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.23-theme-gcwu-fegc.tar.gz

    libraries[theme-gcweb][download][type] = get
    libraries[theme-gcweb][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.23-gcweb.tar.gz

    libraries[theme-ogpl][download][type] = get
    libraries[theme-ogpl][download][url] = https://github.com/wet-boew/themes-cdn/archive/v4.0.23-theme-ogpl.tar.gz
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

    projects[file_entity][version] = 2.0-beta3
    projects[file_entity][subdir] = contrib
    projects[file_entity][patch][2000934] = http://drupal.org/files/issues/allow_selection_of-2000934-30.patch
    projects[file_entity][patch][2198973] = http://drupal.org/files/issues/file_entity_override_widgets-2198973-01.patch

    projects[file_lock][version] = 2.0
    projects[file_lock][subdir] = contrib

    projects[media][version] = 2.0-rc5
    projects[media][subdir] = contrib
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

    projects[linkit][version] = 3.5
    projects[linkit][subdir] = contrib
    projects[linkit][patch][2381549] = http://drupal.org/files/issues/linkit_title_and_uuid-2381549-10.patch

    projects[wysiwyg][version] = 2.3
    projects[wysiwyg][subdir] = contrib
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

    projects[ember][version] = 2.0-alpha4
    projects[ember][type] = theme
    projects[ember][patch][2576461] = http://drupal.org/files/issues/ember_logic_causing-2576461-7.patch
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

    projects[bootstrap][version] = 3.10
    projects[bootstrap][type] = theme
    projects[bootstrap][patch][2311463] = http://drupal.org/files/issues/patch_bootstrap_wetkit-2311463-05.patch
    projects[bootstrap][patch][2469635] = http://drupal.org/files/issues/bootstrap-no_responsive_on_multi_val_form_elements-2469635-1.patch
    projects[bootstrap][patch][2556733] = http://drupal.org/files/issues/update_to_bootstrap-2556733-14.patch
            </pre></p>
        </details>
    </li>
</ul>


<!-- Links Referenced -->

[drush_make]:          http://drushcommands.com/drush-6x/make/make