<div class="border-header clearfix">
	<h1 class="fleft">Пользователь: {usertitle}</h1>
	<div class="fleft userinfo-rating">{rate}</div>
</div>
<p></p>
<div class="userinfo-view clearfix">
	<div class="userinfo-left">
		<div class="comment-item-avatar">
			<img src="{foto}" alt="Фото юзера {usertitle}">
			[online]<div class="ir isonline" title="Пользователь {usertitle} онлайн">Пользователь {usertitle} онлайн</div>[/online]
		</div>
		<div class="clr"></div>
		<div class="btn-wrap userinfo-buttons">
			<p>{email} </p>
			[not-group=5]<p>{pm}</p>[/not-group]
			[not-logged]<p><a href="#" class="active btn-useredit">Редактировать</a></p>[/not-logged]
		</div>
	</div> <!-- .userinfo-left -->
	<div class="userinfo-right">
		<h4 class="like_h4">Информация о пользователе</h4>
		<ul>
			[fullname]<li>Полное имя: <b>{fullname}</b></li>[/fullname]
			<li>Группа: {status} [time_limit]&nbsp;В группе до: {time_limit}[/time_limit]</li>
			[land]<li>Место жительства: {land}</li>[/land]
			<li>Немного о себе: {info}</li>
		</ul>
		<hr>
		<h4 class="like_h4">Статистика</h4>
		<ul>
			[news-num]<li>Количество публикаций: <b>{news-num}</b> [ {news} ] [rss]RSS-подписка[/rss]</li>[/news-num]
			[comm-num]<li>Количество комментариев: <b>{comm-num}</b> [ {comments} ]</li>[/comm-num]
			<li>Дата регистрации: <b>{registration}</b></li>
			<li>Последнее посещение: <b>{lastdate}</b></li>
		</ul>
	
	</div> <!-- .userinfo-right -->
</div> <!-- .userinfo-view -->

[not-logged]
<div class="userinfo-edit clearfix addnews-item" style="display: none;">
	<div class="control-group">
		<label>Ваше Имя</label>
		<input type="text" class="span5" name="fullname" value="{fullname}" />
	</div>
	<div class="control-group">
		<label>Ваш E-Mail</label>
		<input type="text" class="span5" name="email" value="{editmail}" />
		<label class="checkbox">{hidemail}</label>
		<label><input type="checkbox" id="subscribe" name="subscribe" value="1" /> Отписаться от подписанных новостей</label>
	</div>
	
	<hr>

	<div class="control-group">
		<label>Аватар</label>
		<img src="{foto}" alt="Фото юзера {usertitle}"> <br>
		<input type="file" id="load-user-foto" class="span5" name="image" />
		<label class="checkbox"><input type="checkbox" name="del_foto" value="yes" />  Удалить фотографию</label>
		Сервис <a href="http://www.gravatar.com/" target="_blank">Gravatar</a> (Укажите E-mail на данном сервисе)<br /> <input type="text" name="gravatar" value="{gravatar}" class="span5" />
	</div>

	<div class="control-group">
		<label>Место жительства</label>
		<input type="text" class="span5" name="land" value="{land}" />
	</div>

	<div class="control-group">
		<label>Старый пароль</label>
		<input type="password" class="span5" name="altpass" />
	</div>

	<div class="control-group">
		<label>Новый пароль</label>
		<input type="password" class="span5" name="password1" />
		
		<label>Повторите</label>
		<input type="password" class="span5" name="password2" />
	</div>
	
	<div class="control-group">
		<label>О себе</label>
		<div class="b_wrap">
			<textarea style="height:70px;" name="info" >{editinfo}</textarea>
		</div>
	</div>

	<div class="control-group">
		<label>Подпись</label>
		<div class="b_wrap">
			<textarea style="height:70px;" name="signature">{editsignature}</textarea>
		</div>
	</div>

	<div class="control-group">
		<label>Игнорлист</label>
		{ignore-list}
	</div>
	
	<div class="control-group">
		<label>Часовой пояс</label>
		{timezones}
	</div>
	
	<div class="control-group">
		{news-subscribe}
	</div>
	
	<div class="control-group">
		{comments-reply-subscribe}
	</div>
	
	<div class="control-group">
		{unsubscribe}
	</div>
	
	<div class="control-group">
		{twofactor-auth}
	</div>

	<div class="control-group">
		<label>Блокировка по IP</label>
		<div class="b_wrap">
			<textarea style="height:70px;" name="allowed_ip">{allowed-ip}</textarea>
		</div>
		<small>Ваш текущий IP: <b>{ip}</b><span style="color:red;">* Внимание! Будьте бдительны при изменении данной настройки. Доступ к Вашему аккаунту будет доступен только с того IP-адреса или подсети, который Вы укажете. Вы можете указать несколько IP адресов, по одному адресу на каждую строчку.Пример: 192.48.25.71 или 129.42.*.*</span></small>
	</div>

	<div class="control-group">
		<p>
			<input type="submit" class="btn" value="Отправить">  
			<input type="submit" class="btn btn-useredit active" value="Отменить">
		</p>
	</div>
</div>
[/not-logged]
<p></p>
<div class="clr"></div>