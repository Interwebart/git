<div class="border-header clearfix">
	<h1 class="fleft">Статистика сайта</h1>
</div>
<div class="news-text">
	<div class="stats-info clearfix">
		<ul>
			<li><h3>Новости:</h3></li>
			<li>Общее кол-во новостей: <b class="blue">{news_num}</b></li>
			<li>Из них опубликовано: <b class="blue">{news_allow}</b></li>
			<li>Опубликовано на главной: <b class="blue">{news_main}</b></li>
			<li>Ожидает модерации: <b class="blue">{news_moder}</b></li>
		</ul>
		<ul>
			<li><h3>Пользователи:</h3></li>
			<li>Общее кол-во пользователей: <b class="blue">{user_num}</b></li>
			<li>Из них забанено: <b class="blue">{user_banned}</b></li>
		</ul>
		<ul>
			<li><h3>Комментарии:</h3></li>
			<li>Кол-во комментариев: <b class="blue">{comm_num}</b></li>
			<li><a href="/?do=lastcomments">Посмотреть последние</a></li>
		</ul>
	</div> <!-- .stats-info -->
	<hr>
	<div class="stats-info clearfix">
		<ul>
			<li><h3>За сутки добавлено</h3></li>
			<li><b>{news_day}</b> новостей</li>
			<li><b>{comm_day}</b> комментариев</li>
			<li><b>{user_day}</b> новых пользователей</li>
		</ul>
		<ul>
			<li><h3>За неделю добавлено</h3></li>
			<li><b>{news_week}</b> новостей</li>
			<li><b>{comm_week}</b> комментариев</li>
			<li><b>{user_week}</b> новых пользователей</li>
		</ul>
		<ul>
			<li><h3>За месяц добавлено</h3></li>
			<li><b>{news_month}</b> новостей</li>
			<li><b>{comm_month}</b> комментариев</li>
			<li><b>{user_month}</b> новых пользователей</li>
		</ul>
	</div> <!-- .stats-info -->
	<hr>
	<p class="bd_size"><b>Общий размер базы данных: {datenbank}</b></p>
</div> <!-- .news-text -->

<div class="border-header clearfix">
	<h3 class="fleft">Лучшие пользователи</h3>
</div>
<div class="news-text">
	<table class="pm" style="width: 100%;">
		{topusers}
	</table>
</div>