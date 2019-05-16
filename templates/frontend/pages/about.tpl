{**
 * templates/frontend/pages/about.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view a journal's or press's description, contact
 *  details, policies and more.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="about.aboutContext"}

<div class="page page_about">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.aboutContext"}
	{include file="frontend/components/editLink.tpl" page="management" op="settings" path="context" anchor="masthead" sectionTitleKey="about.aboutContext"}

    <h1 class="about_section_title" style="box-shadow: 0 0.15em 0.35em 0 rgba(0, 0, 0, 0.133);margin-top: 0px;">{translate key="about.aboutContext"}</h1>
	{$currentContext->getLocalizedSetting('about')}
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
