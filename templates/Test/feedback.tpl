
<div class="border-header clearfix">
	<h1 class="fleft">Обратная связь</h1>
</div>

<div class="form-horizontal">
	[not-logged]
	<div class="control-group">	
		<div class="control-label">Ваше Имя</div> 
		<div class="controls"><input type="text" name="name" id="name" placeholder="Как к вам обращаться?"></div>			
	</div>
	<div class="control-group">	
		<div class="control-label">Ваш E-Mail</div> 
		<div class="controls">
			<input type="text" name="email" id="mail" placeholder="введите ваш email для сваязи">
		</div>
	</div>
	[/not-logged]
	<div class="control-group">	
		<div class="control-label">Заголовок сообщения</div> 
		<div class="controls"><input type="text" maxlength="45" name="subject" placeholder="Введите заголовок сообщения"></div>			
	</div>
	<div class="control-group">	
		<div class="control-label">Получатель</div> 
		<div class="controls">{recipient}</div>		
	</div>
	<div class="control-group">	
		<div class="control-label">Текст сообщения</div> 
		<div class="controls">
			<textarea name="message" placeholder="Введите текст сообщения"></textarea>
		</div>
	</div>
	[attachments]
	<div class="control-group">
		<div class="control-label">Прикрепить файлы:</div> 
		<div class="controls"><input name="attachments[]" type="file" multiple></div>
	</div>
	[/attachments]
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
				{code}
				<input class="captcha_input" type="text" name="sec_code" id="sec_code" >
			</div>
		</div>
	</div>
	<hr>
	[/sec_code]
	<div class="control-group">
		<div class="controls">
			<input class="btn btn-success" type="submit" name="send_btn" value="Отправить">
		</div>
	</div>
</div> <!-- .form-horizontal -->