<script src="{THEME}/js/vendor/reg.js"></script>
<div class="border-header clearfix">
	<h1>[registration]Регистрация нового пользователя[/registration][validation]Обновление профиля пользователя[/validation]</h1>
</div>
	<p>[registration]
				<h4>Здравствуйте, уважаемый посетитель нашего сайта!</h4>
				Регистрация на нашем сайте позволит Вам быть его полноценным участником.
				Вы сможете добавлять новости на сайт, оставлять свои комментарии, просматривать скрытый текст и многое другое.
				<br >В случае возникновения проблем с регистрацией, обратитесь к <a href="/?do=feedback">администратору</a> сайта.
		[/registration]
		[validation]
				<h4>Уважаемый посетитель,</h4>
				Ваш аккаунт был зарегистрирован на нашем сайте,
				однако информация о Вас является неполной, поэтому заполните дополнительные поля в Вашем профиле.
		[/validation]</p>
<div class="register form-horizontal">
	[registration]
	<div class="control-group">	
		<div class="control-label">Логин</div> 
		<div class="controls">
			<input type="text" name="name" id='name' onBlur="CheckLogin(); return false;">
			<div id="result-registration"></div>
		</div>
	</div>

	<div class="control-group">
		<div class="control-label"></div>
		<div class="controls">
			<a class="btn btn-small" href="#" onclick="$('#generatorparoley').toggle();return false;" title="Кликните для открытия генератора паролей">Генератор паролей (если лень придумывать)</a>
			<div id="generatorparoley" style="display:none;">
				<p class="clearfix">
					<a name="generated"></a>
					<select name="charLen" onchange="GeneratePassword()" class="fleft">
						<option value="6">6 символов</option>
						<option value="7">7 символов</option>
						<option value="8">8 символов</option>
						<option value="9">9 символов</option>
						<option value="10" selected>10 символов</option>
						<option value="11">11 символов</option>
						<option value="12">12 символов</option>
						<option value="13">13 символов</option>
						<option value="14">14 символов</option>
						<option value="15">15 символов</option>
					</select>
					<input type="text" name="generated" value="" style="width: 184px; float: left; margin-left: 20px;" >
				</p>
				<div class="clearfix">
					<a class="btn btn-small fleft" href="javascript:void(0)" onclick="GeneratePassword()" title="Сгенерировать пароль" style="width: 216px;">Сгенерировать пароль</a>
					<a class="btn btn-small fleft" href="javascript:paste1()" id='hide' title="Вставить пароль в поля ввода" style="width: 180px; margin-left: 20px;">Вставить пароль</a>
				</div>
				<p>
					<span class="hide" style="display:none; color: red;">Внимание! Обязательно запомните сгенерированный пароль!</span>
				</p>
			</div>
		</div>
	</div>
	<div class="control-group">
		<div class="control-label"></div>
		<div class="controls"></div>
	</div>
	<div class="control-group">
		<div class="control-label">Пароль:</div>
		<div class="controls"><input type="password" name="password1" onblur="CheckPwds(); return false;"></div>
	</div>
	<div class="control-group">
		<div class="control-label">Повторите пароль</div>
		<div class="controls">
			<input type="password" name="password2" onblur="CheckPwds(); return false;" >
			<div name="pass-result" id="pass-result"></div>
		</div>
	</div>
	<div class="control-group">
		<div class="control-label">Ваш E-Mail</div>
		<div class="controls">
			<input class="span5" type="text" name="email" onBlur="CheckMail(); return false;" >
			<div id='result-email' name='result-email'></div>
		</div>
	</div>
	[question]
	<hr>
	<div class="control-group">
		<div class="control-label">
			Введите ответ на вопрос
		</div>
		<div class="controls">
			<p>Вопрос:	<b>{question}</b></p>
			Ответ: &nbsp; <input type="text" name="question_answer" id="question_answer" >
		</div>
	</div>

	[/question]
	[sec_code]
	<hr>
	<div class="control-group">
		<div class="control-label">Защита от спама</div>
		<div class="controls">
			<div class="seccode">
				{reg_code}
				<input class="captcha_input" type="text" name="sec_code" id="sec_code" >
			</div>
		</div>
	</div>
	<hr>
	[/sec_code]
	[/registration]

	[validation]

	<div class="control-group">
		<div class="control-label">Ваше Имя</div>
		<div class="controls"><input type="text" name="fullname"></div>
	</div>
	<div class="control-group">
		<div class="control-label">Место жительства</div>
		<div class="controls"><input type="text" name="land"></div>
	</div>
	<div class="control-group">
		<div class="control-label">Фото</div>
		<div class="controls"><input type="file" name="image"></div>
	</div>
	<div class="control-group">
		<div class="control-label">О себе</div>
		<div class="controls"><textarea name="info" style="height: 100px;"></textarea></div>
	</div>
	[/validation]
	
	<div class="control-group">
		<div class="controls">			
			<button name="submit" class="btn" type="submit">Отправить</button>
		</div>
	</div>
	
</div> <!-- .form-horizontal -->