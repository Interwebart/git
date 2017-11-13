<div class="news" itemscope itemtype="http://schema.org/Article">
	<article>
		<div class="border-header clearfix">
			<h3 class="fleft" itemprop="name"><a href="{full-link}" title="{title}">{title}</a></h3>
			<span class="fright">{favorites}</span>
			<span class="fright">[edit]<span class="icon edit-news">&nbsp;</span>[/edit]</span>
		</div>
		<div class="news-info clearfix">
			<span class="icon clock" itemprop="datePublished">{date=d.m.Y}</span> 
			<span class="icon user" itemprop="author">{author}</span> 
			<span class="icon preview">{views}</span> 
			<span class="icon comms" ><a href="{full-link}#comment" itemprop="discussionUrl">{comments-num}</a></span> 
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
			{short-story}
		</div> <!-- .news-text -->
		<div class="news-footer clearfix">
			<div class="fleft news-info">
				<span class="ir speedbar-arr">Категория:</span> {link-category}
			</div>
			<span class="fright btn" data-target-self="{full-link}">подробнее</span>
			[rating-type-1]<div class="short-rating">{rating}</div>[/rating-type-1]
		</div>
	</article>
</div> <!-- .news -->
