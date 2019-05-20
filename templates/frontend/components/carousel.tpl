<div id="carouselAnnouncements" class="carousel slide mb-4" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#carouselAnnouncements" data-slide-to="0" class="active"></li>
        <li data-target="#carouselAnnouncements" data-slide-to="1" class=""></li>
        <li data-target="#carouselAnnouncements" data-slide-to="2" class=""></li>
    </ol>
    <div class="carousel-inner" style="background: lightgrey;border-radius: 0.25rem;">
        {if $numAnnouncementsHomepage && $announcements|@count}
            {foreach name=announcements from=$announcements item=announcement}
                <div class="carousel-item" style="padding: 150px;">
                    <div class="carousel-caption d-md-block cmp_announcements">
                        {include file="frontend/objects/announcement_summary.tpl" heading="h3"}
                    </div>
                </div>
            {/foreach}
        {/if}
    </div>
    <a class="carousel-control-prev" href="#carouselAnnouncements" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Anterior</span>
    </a>
    <a class="carousel-control-next" href="#carouselAnnouncements" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Próximo</span>
    </a>
</div>

<script type="text/javascript">
    {literal}
    let carouselAnnouncementsId = document.getElementById("carouselAnnouncements")
    let carouselInnerElement = carouselAnnouncementsId.getElementsByClassName("carousel-inner")[0].firstElementChild
    carouselInnerElement.className += " active"
    {/literal}
</script>