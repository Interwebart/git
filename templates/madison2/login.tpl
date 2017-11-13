<div class="loginbox">
	[not-group=5]
	<div class="loginpanel">
		<div class="login-wrap">
			<a class="new-pm pm-{new-pm}" href="{pm-link}" title="Новых сообщений: {new-pm}">{new-pm}</a>
			<div class="login-image" data-target-self="{profile-link}">
				<img id="user_avatar" src="{foto}" alt="{login}" />
			</div>
			<div class="username">Привeт, <b id="author_name">{login}</b>!</div>
			<ul>
				[admin-link]<li><a class="admin-link" href="{admin-link}" target="_blank">Админцентр</a></li>[/admin-link]
				<li><a class="addnews-link" href="{addnews-link}">Добавить новость</a></li>
				<li><a class="profile-link" href="{profile-link}">Мой профиль</a></li>
				<li><a class="pm-link" href="{pm-link}">Сообщения ({new-pm} | {all-pm})</a></li>
				<li><a class="fav-link" href="{favorites-link}">Мои закладки</a></li>
				<li><a class="comms-link" href="/?do=lastcomments">Все комметарии</a></li>
				<li><a class="newpost-link" href="{newposts-link}">Новые материалы</a></li>
			</ul>
			<a class="ir logout" href="{logout-link}" title="Выход">x</a>
		</div> <!-- .login-wrap -->
	</div> <!-- .loginpanel -->
	[/not-group]

	[group=5]
	<div class="loginform">
		<form class="clearfix" method="post" action="">
			<input tabindex="1" name="login_name" type="text" placeholder="{login-method}"> 
			<a class="icon bell" href="{lostpassword-link}" title="Восстановление пароля"> Забыли?</a>
			<div class="clr"></div>
			<input tabindex="2" name="login_password" type="password" placeholder="Пароль">
			<button tabindex="3" type="submit" class="btn btn-small">Вход</button>
			<label class="fleft"><input type="checkbox" name="login_not_save" id="login_not_save" value="1"> Чужой компьютер</label>
			<a class="fright" href="{registration-link}" title="регистрация">Регистрация</a>
			<input name="login" type="hidden" id="login" value="submit">
		</form>
	</div>																																																																																																																																																				[aviable=showfull]<span style="display:none;">только у нас скачать <a href="http://newtemplates.ru/buy/" title="купить шаблоны dle">купить шаблоны dle</a> по низким ценам</span>[/aviable]
	[/group]
</div> <!-- .loginbox -->