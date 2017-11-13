[short-preview]
<div class="news">
	<article>
		<div class="border-header clearfix">
			<h3 class="fleft"><a href="{full-link}" title="{title}">{title}</a></h3>
			<span class="fright">{favorites}</span>
			<span class="fright">[edit]<span class="icon edit-news">&nbsp;</span>[/edit]</span>
		</div>
		<div class="news-info clearfix">
			<span class="icon clock">{date=d.m.Y}</span> 
			<span class="icon user">{author}</span> 
			<span class="icon preview">{views}</span> 
			<span class="icon comms" ><a href="{full-link}#comment">{comments-num}</a></span> 
			[tags]
				<div class="icon tags"> {tags}</div>
			[/tags]						
		</div> <!-- .news-info -->
		<div class="news-text clearfix">
			{short-story}
		</div> <!-- .news-text -->
		<div class="news-footer clearfix">
			<div class="fleft news-info">
				<span class="ir speedbar-arr">Категория:</span> {link-category}
			</div>
			<span class="fright btn" data-target-self="{full-link}">подробнее</span>
			[rating]<div class="short-rating">{rating}</div>[/rating]
		</div>
	</article>
</div> <!-- .news -->

[/short-preview]
[full-preview]
<div class="news fullstory">
	<article>
		<div class="border-header clearfix">
			<h1 class="fleft">{title}</h1>
			<span class="favs">{favorites}</span>
			<span class="fright">[edit]<span class="icon edit-news">&nbsp;</span>[/edit]</span>
		</div>
		<div class="news-info clearfix">
			<span class="icon clock">{date=d.m.Y}</span> 
			<span class="icon user">{author}</span> 
			<span class="icon preview">{views}</span> 
			<span class="icon comms" ><a href="#comment">{comments-num}</a></span> 
			[tags]
				<div class="icon tags"> {tags}</div>
			[/tags]						
		</div> <!-- .news-info -->
		<div class="news-text clearfix">
			{full-story}
		</div> <!-- .news-text -->
		<div class="news-footer clearfix">
			[edit-date]
			<div class="edit-reason">
				<div class="edit-reason-editor">Новость отредактировал: {editor} - {edit-date}</div>
				<div class="edit-reason-reason">[edit-reason]Причина: {edit-reason}[/edit-reason]</div>
			</div> <!-- .edit-reason -->
			[/edit-date]
			[rating]<div class="full-rating">{rating}</div>[/rating]
		</div>
		<hr>
	</article>
</div> <!-- .news -->
[/full-preview]
[static-preview]
<section>
	<div class="border-header clearfix">
		<h1 class="fleft">{description}</h1>
	</div>
	<div class="news-text">{static}</div>
	{pages}
</section>
[/static-preview]
