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

<div class="page_index_journal mt-4">

	{call_hook name="Templates::Index::journal"}

	{if $homepageImage}
		<div class="homepage_image mb-3 mt-3" style="margin: 0;">
			<img src="{$publicFilesDir}/{$homepageImage.uploadName|escape:"url"}" alt="{$homepageImageAltText|escape}">
		</div>
	{/if}

    {* Announcements Carousel *}
{*    {include file="frontend/components/carousel.tpl"}*}

	<div class="row">

		<div class="col-12 col-md-4 mb-4">
			{* Latest issue *}
			{if $issue}
                <h2 style="font-size: 1.5em;display: block;width: 100%;padding: 20px 30px;margin-bottom: 0;margin-top: 0;box-shadow: 0 0.15em 0.35em 0 rgba(0,0,0,0.133);background: #bbdefb; border-top: 5px solid #2286c3;">{translate key="journal.currentIssue"}</h2>
				<div class="current_issue" style="margin-top: 0px;border-radius: 0;border-top: 0;">
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
				<div class="additional_content mb-4" style="border-top: 5px solid #007ab2;">
					{$journalDescription}
				</div>
			{/if}

            <h2 class="about_section_title">{translate key="manager.setup.editorialTeam"}</h2>
			<div class="editorial_team mb-4">
				{$currentContext->getLocalizedSetting('editorialTeam')}
			</div>
		</div>

        <div class="col-12 col-md-4">
            {* Announcements *}
            {if $numAnnouncementsHomepage && $announcements|@count}
                <h2 style="font-size: 1.5em;display: block;width: 100%;padding: 20px 30px;margin-bottom: 0;margin-top: 0;box-shadow: 0 0.15em 0.35em 0 rgba(0,0,0,0.133);background: #bbdefb; border-top: 5px solid #2286c3;">{translate key="announcement.announcements"}</h2>
                <div class="cmp_announcements highlight_first" style="margin: 0px; border-radius: 0;border-top: 0;">
                    {foreach name=announcements from=$announcements item=announcement}
                    {if $smarty.foreach.announcements.iteration > $numAnnouncementsHomepage}
                        {php}break;{/php}
                    {/if}
                    {if $smarty.foreach.announcements.iteration == 1}
                    {include file="frontend/objects/announcement_summary.tpl" heading="h3"}
                    <div class="more" style="width: 100%">
                        {else}
                        {include file="frontend/objects/announcement_summary.tpl" heading="h3"}
                        {/if}
                        {/foreach}
                    </div><!-- .more -->
                </div>
            {/if}
        </div>
	</div>

</div><!-- .page -->

{include file="frontend/components/footer.tpl"}
