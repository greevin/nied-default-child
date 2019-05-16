{**
 * templates/frontend/pages/indexJournal.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display the index page for a journal
 *
 * @uses $currentJournal Journal This journal
 * @uses $journalDescription string Journal description from HTML text editor
 * @uses $homepageImage object Image to be displayed on the homepage
 * @uses $additionalHomeContent string Arbitrary input from HTML text editor
 * @uses $announcements array List of announcements
 * @uses $numAnnouncementsHomepage int Number of announcements to display on the
 *       homepage
 * @uses $issue Issue Current issue
 *}
{include file="frontend/components/header.tpl" pageTitleTranslated=$currentJournal->getLocalizedName()}

<div class="page_index_journal">

	{call_hook name="Templates::Index::journal"}

	{if $homepageImage}
		<div class="homepage_image">
			<img src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}">
		</div>
	{/if}

    {* Announcements Carousel *}
    {include file="frontend/components/carousel.tpl"}

	<div class="row">

		<div class="col-12 col-md-8 mb-4">
			{* Latest issue *}
			{if $issue}
				<div class="current_issue" style="margin-top: 0px;border-radius: 0.25rem;">
					<h2>{translate key="journal.currentIssue"}</h2>
					<div class="current_issue_title">
						{$issue->getIssueIdentification()|strip_unsafe_html}
					</div>
					{include file="frontend/objects/issue_toc.tpl"}
					<a href="{url router=$smarty.const.ROUTE_PAGE page="issue" op="archive"}" class="read_more">
						{translate key="journal.viewAllIssues"}
					</a>
				</div>
			{/if}
		</div>

		<div class="col-12 col-md-4">
			{* Additional Homepage Content *}
			{if $journalDescription}
				<div class="additional_content mb-4" style="border-radius: 0.25rem;">
					{$journalDescription}
				</div>
			{/if}

            <h2 class="cmp_notification_about">{translate key="manager.setup.editorialTeam"}</h2>
			<div class="editorial_team mb-4">
				{$currentContext->getLocalizedSetting('editorialTeam')}
			</div>
		</div>
	</div>

</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
