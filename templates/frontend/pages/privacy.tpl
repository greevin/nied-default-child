{**
 * templates/frontend/pages/privacy.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the page to view the privacy policy.
 *
 * @uses $currentContext Journal|Press The current journal or press
 *}
{include file="frontend/components/header.tpl" pageTitle="manager.setup.privacyStatement"}

<div class="page page_privacy">
	{include file="frontend/components/breadcrumbs.tpl" currentTitleKey="manager.setup.privacyStatement"}

    <h1 class="about_section_title" style="box-shadow: 0 0.15em 0.35em 0 rgba(0, 0, 0, 0.133);margin-top: 0px;">{translate key="manager.setup.privacyStatement"}</h1>
	{$privacyStatement}
</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
