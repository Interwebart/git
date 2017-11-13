[searchposts]
<p></p>
	[fullresult]
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
			[rating]<div class="short-rating">{rating}</div>[/rating]
		</div>
	</article>
</div> <!-- .news -->

	[/fullresult]
	[shortresult]
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
			[rating]<div class="short-rating">{rating}</div>[/rating]
		</div>
	</article>
</div> <!-- .news -->

	[/shortresult]
[/searchposts]
[searchcomments]
<p></p>
	[fullresult]
<div class="comment-item" itemscope itemtype="http://schema.org/UserComments" itemprop="comment">
	<div class="comment-item-avatar">
		<img src="{foto}" alt="Фото юзера {login}">
		[online]<div class="ir isonline" title="Пользователь {login} онлайн">Пользователь {login} онлайн</div>[/online]
	</div>
	<div class="comment-body">
		<div class="comment-header">
			<b>{author}</b> <span itemprop="commentTime">{date=d.m.Y}</span> {news_title}
			<div class="fright">{mass-action}</div>
		</div>
		<div class="comment-text clearfix" itemprop="commentText">
			{comment}
		</div> <!-- .comment-text -->
		<div class="comment-footer">
			<span class="comm-del">[com-del]Удалить[/com-del]</span> 
			<span class="comm-edit">[com-edit]Изменить[/com-edit]</span> 
			<span class="comm-quote">[fast]Цитата[/fast]</span>
		</div>
	</div>
</div> <!-- .comment-item -->

	[/fullresult]
	[shortresult]
<div class="comment-item" itemscope itemtype="http://schema.org/UserComments" itemprop="comment">
	<div class="comment-item-avatar">
		<img src="{foto}" alt="Фото юзера {login}">
		[online]<div class="ir isonline" title="Пользователь {login} онлайн">Пользователь {login} онлайн</div>[/online]
	</div>
	<div class="comment-body">
		<div class="comment-header">
			<b>{author}</b> <span itemprop="commentTime">{date=d.m.Y}</span> {news_title}
			<div class="fright">{mass-action}</div>
		</div>
		<div class="comment-text clearfix" itemprop="commentText">
			{comment}
		</div> <!-- .comment-text -->
		<div class="comment-footer">
			<span class="comm-del">[com-del]Удалить[/com-del]</span> 
			<span class="comm-edit">[com-edit]Изменить[/com-edit]</span> 
			<span class="comm-quote">[fast]Цитата[/fast]</span>
		</div>
	</div>
</div> <!-- .comment-item -->

	[/shortresult]
[/searchcomments]