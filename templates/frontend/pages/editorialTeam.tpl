{**
 * templates/frontend/pages/editorialTeam.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the editorial team.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="about.editorialTeam"}

<div class="page page_editorial_team">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="about.editorialTeam"}
	{include file="frontend/components/editLink.tpl" page="management" op="settings" path="context" anchor="masthead" sectionTitleKey="about.editorialTeam"}

    <h1 class="cmp_notification_about" style="box-shadow: 0 0.15em 0.35em 0 rgba(0, 0, 0, 0.133);margin-top: 0px;">{translate key="manager.setup.editorialTeam"}</h1>
    {$currentContext->getLocalizedSetting('editorialTeam')}
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
