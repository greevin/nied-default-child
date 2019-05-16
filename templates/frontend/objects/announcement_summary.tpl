{**
 * templates/frontend/objects/announcement_summary.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display a summary view of an announcement
 *
 * @uses $announcement Announcement The announcement to display
 * @uses $heading string HTML heading element, default: h2
 *}
{if !$heading}
	{assign var="heading" value="h2"}
{/if}

<article class="obj_announcement_summary">
	<{$heading} style="padding: 0 1.25rem;">
		<a href="{url router=$smarty.const.ROUTE_PAGE page="announcement" op="view" path=$announcement->getId()}">
			{$announcement->getLocalizedTitle()|escape}
		</a>
	</{$heading}>
	<div class="date" style="padding: 0 1.25rem;">
		{$announcement->getDatePosted()|date_format:$dateFormatShort}
	</div>
	<div class="summary" style="padding: .75rem 1.25rem 1.25rem;margin-top: 0;">
		{$announcement->getLocalizedDescriptionShort()|strip_unsafe_html}
	</div>
    <div class="card-footer">
        <a href="{url router=$smarty.const.ROUTE_PAGE page="announcement" op="view" path=$announcement->getId()}" class="read_more">
            <span aria-hidden="true" role="presentation">
                {translate key="common.readMore"}
            </span>
            <span class="pkp_screen_reader">
				{translate key="common.readMoreWithTitle" title=$announcement->getLocalizedTitle()|escape}
			</span>
        </a>
    </div>
</article><!-- .obj_announcement_summary -->