{**
 * templates/frontend/components/announcements.tpl
 *
 * Copyright (c) 2014-2018 Simon Fraser University
 * Copyright (c) 2003-2018 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Display a list of announcements
 *
 * @uses $announcements array List of announcements
 *}

<div class="row">
    {foreach from=$announcements item=announcement}
    <div class="col-sm-6">
        <div class="card mb-3">
            <div class="card-body" style="padding-bottom: 0px;padding-left: 0px;padding-right: 0px;">
                <div>
                    {include file="frontend/objects/announcement_summary.tpl"}
                </div>
            </div>
        </div>
    </div>
    {/foreach}
</div>
