<div class="nav">						
	<ul class="top-nav clearfix">
		<li [aviable=main]class="current"[/aviable]>
			<a href="/">Главная</a>
		</li>
		<li [category=7,8,9,10]class="current"[/category]>
			<a href="/blog/">Блог</a>
			<ul>
				<li [category=9]class="current"[/category]><a href="/blog/koding/">О кодинге</a></li>
				<li [category=8]class="current"[/category]><a href="/blog/dizajn/">О дизайне</a></li>
				<li [category=10]class="current"[/category]><a href="/blog/vyorstka/">О верстке</a></li>
			</ul>
		</li>
		<li>
			<a href="#">Работы</a>
			<ul>
				<li><a href="#">Не текста</a></li>
				<li><a href="#">Выйти рукописи</a></li>
				<li><a href="#">Продолжил своего</a></li>
			</ul>
		</li>
		<li>
			<a href="#">Новости</a>
			<ul>
				<li><a href="#">Этого земле</a></li>
				<li><a href="#">Совсем быстрого</a></li>
				<li><a href="#">Рисунок запечатлены</a></li>
				<li><a href="#">Созданном по</a></li>
				<li><a href="#">Радостью тысячи</a></li>
				<li><a href="#">Червяков все</a></li>
				<li><a href="#">Туманится мирок</a></li>
				<li><a href="#">Мысльбы проскальзывает</a></li>
				<li><a href="#">Всего поднимается</a></li>
				<li><a href="#">Нас художником</a></li>
				<li><a href="#">Между когда</a></li>
				<li><a href="#">Траве чувствую</a></li>
			</ul>
		</li>
		<li>
			<a href="#">События</a>
			<ul>
				<li><a href="#">Чудесные луч</a></li>
				<li><a href="#">Живет взор</a></li>
				<li><a href="#">Мирок души</a></li>
				<li><a href="#">Не души</a></li>
				<li><a href="#">Как моей</a></li>
				<li><a href="#">Стебельками вокруг</a></li>
			</ul>
		</li>
		<li>
			<a href="/?do=feedback">Контакты</a>
		</li>						
	</ul>
	<div class="search" role="search">
		<form name="searchform" method="post" action="">
			<input type="hidden" name="do" value="search" />
			<input type="hidden" name="subaction" value="search" />
			<div>
			<input class="s_text" type="text" id="story" name="story"  placeholder="Поиск" /> 
			<input class="search-but" type="submit" value="" title="Найти" />
			</div>
		</form>
	</div> 
</div> <!-- .nav -->