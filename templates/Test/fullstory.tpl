{poll}
<div class="news fullstory" itemscope itemtype="http://schema.org/Article">
	<article>
		<div class="border-header clearfix">
			<h1 class="fleft">{title}</h1>
			<span class="favs fright">{favorites}</span>
			<span class="fright">[edit]<span class="icon edit-news">&nbsp;</span>[/edit]</span>
		</div>
		<div class="news-info clearfix">
			<span class="icon clock" itemprop="datePublished">{date=d.m.Y}</span>
			<span class="icon user" itemprop="author">{author}</span>
			<span class="icon preview">{views}</span>
			<span class="icon comms" ><a href="#comment" itemprop="discussionUrl">{comments-num}</a></span>
			[rating]
			[rating-type-2]<div class="ratebox2">
			<ul class="reset">
			<li>[rating-plus]<img src="{THEME}/images/like.png" title="Нравится" alt="Нравится" style="width:14px;" />[/rating-plus]</li>
			<li>{rating}</li>
			</ul></div>[/rating-type-2]
			[rating-type-3]<div class="ratebox3">
			<ul class="reset">
				<li>[rating-minus]<img src="{THEME}/images/ratingminus.png" title="Не нравится" alt="Не нравится" style="width:14px;" />[/rating-minus]</li>
				<li>{rating}</li>
				<li>[rating-plus]<img src="{THEME}/images/ratingplus.png" title="Нравится" alt="Нравится" style="width:14px;" />[/rating-plus]</li>
			</ul>
			</div>[/rating-type-3]
			[/rating]
			<meta itemprop="interactionCount" content="UserPageVisits:{views}" />
			<meta itemprop="interactionCount" content="UserComments:{comments-num}" />
			[tags]
				<div class="icon tags"> {tags}</div>
			[/tags]
		</div> <!-- .news-info -->
		<div class="news-text clearfix" itemprop="articleBody">
			{full-story}
		</div> <!-- .news-text -->
		<div class="news-footer clearfix">
			[edit-date]
			<div class="edit-reason">
				<div class="edit-reason-editor">Новость отредактировал: {editor} - {edit-date}</div>
				<div class="edit-reason-reason">[edit-reason]Причина: {edit-reason}[/edit-reason]</div>
			</div> <!-- .edit-reason -->
			[/edit-date]
			[rating-type-1]<div class="full-rating">{rating}</div>[/rating-type-1]
		</div>
		<hr>
	    <div class="share42init clearfix" data-url="{full-link}" data-title="{title}" data-image="{image-1}" data-path="{THEME}/images/"></div>
	    <script src="{THEME}/js/vendor/share42.js"></script>
	    {include file="engine/modules/userbox.php?&userName={login}"}
        [related-news]
		<div id="showrelated" class="related-news clearfix">
			<h3>Похожие новости</h3> 
			<div class="ir close-block">Скрыть</div>
			<div class="ir open-block hide">Показать</div>
			<ul>
				{related-news}
			</ul>
		</div> <!-- .related-news -->
		[/related-news]
		
		<div class="comments-wrap">
			[not-comments]
			<div class="border-header clearfix">
				<h3>Комментариев пока нет, добавьте свой!</h3>
			</div>
			[/not-comments]
			[comments]
			<div class="border-header clearfix">
				<h3>Комментарии пользователей <span>({comments-num})</span></h3>
			</div>
			[/comments]
			{comments}
		</div> <!-- .comments-wrap -->
	</article>

</div> <!-- .news -->