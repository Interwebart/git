<div class="border-header clearfix">
	<h1 class="fleft">Восстановление пароля</h1>
</div>
<div class="form-horizontal">
	<div class="control-group">
		<div class="control-label">
			Ваш логин или E-Mail на сайте:
		</div>
		<div class="controls">
			<input class="f_input" type="text" name="lostname">
		</div>
	</div>
	[sec_code]
		<hr>
		<div class="control-group">
			<div class="control-label">Защита от спама</div>
			<div class="controls">
				<div class="seccode">
					{code}
					<input class="captcha_input" type="text" name="sec_code" id="sec_code" >
				</div>
			</div>
		</div>
		<hr>
	[/sec_code]
	
	<div class="control-group">
		<div class="controls">
			<button name="submit" class="btn" type="submit">Отправить</button>
		</div>
	</div>
</div> <!-- .form-horizontal -->