{**
 * templates/frontend/components/breadcrumbs_article.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display a breadcrumb nav item showing the current page. This basic
 *  version is for top-level pages which only need to show the Home link. For
 *  category- and series-specific breadcrumb generation, see
 *  templates/frontend/components/breadcrumbs_catalog.tpl.
 *
 * @uses $currentTitle string The title to use for the current page.
 * @uses $currentTitleKey string Translation key for title of current page.
 * @uses $issue Issue Issue this article was published in.
 *}

<nav class="cmp_breadcrumbs" role="navigation" aria-label="{translate key="navigation.breadcrumbLabel"}">
	<ol>
		<li>
            <span class="separator-sign">{translate key="breadcrumber.location"}</span>
			<a href="{url page="index" router=$smarty.const.ROUTE_PAGE}">
				{translate key="common.homepageNavigationLabel"}
			</a>
            <span style="color: rgba(0,0,0,0.54);"> &gt; </span>
		</li>
		<li>
			<a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}">
				{translate key="navigation.archives"}
			</a>
            <span class="separator-sign"> &gt; </span>
		</li>
		<li>
			<a href="{url page="issue" op="view" path=$issue->getBestIssueId()}">
				{$issue->getIssueIdentification()}
			</a>
            <span class="separator-sign"> &gt; </span>
		</li>
		<li class="current" style="font-weight: bold;">
				{if $currentTitleKey}
					{translate key=$currentTitleKey}
				{else}
					{$currentTitle|escape}
				{/if}
		</li>
	</ol>
</nav>
