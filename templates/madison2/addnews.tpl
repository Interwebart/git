<div class="border-header clearfix">
	<h1 class="fleft">Добавить новость</h1>
</div>

<div class="form-horizontal">
	<div class="control-group">	
		<div class="control-label">Заголовок</div> 
		<div class="controls">
			<input type="text" id="title" name="title" value="{title}" maxlength="150" placeholder="Введите заголовок новости">&nbsp;<input class="bbcodes" style="height: 22px; font-size: 11px;" title="Проверить доступность логина для регистрации" onclick="find_relates(); return false;" type="button" value="Найти похожие" /><span id="related_news"></span>
		</div>
	</div>
	
	[urltag]	
		<div class="control-group">	
			<div class="control-label">URL статьи</div> 
			<div class="controls">
				<input type="text" name="alt_name" value="{alt-name}" maxlength="150" placeholder="Текст ссылки на новость (латиница)">
			</div>
		</div>
	[/urltag]
	
	<div class="control-group">	
		<div class="control-label">Теги</div> 
		<div class="controls">
			<input type="text" name="tags" value="{tags}" maxlength="150" id="tags" autocomplete="off" placeholder="Перечисляйте теги через запятую">
		</div>
	</div>
	
	<div class="control-group">	
		<div class="control-label">Категория (ctrl + клик для выбора нескольких категорий)</div> 
		<div class="controls">{category}</div>
	</div>
	
	<div class="control-group">	
		<div class="control-label"></div> 
		<div class="controls">
			<span class="btn add-vote-btn">Добавить опрос</span>
		</div>
	</div>
	
	<div style="display:none;" class="control-group addvote">	
		<div class="control-label">Заголовок опроса</div> 
		<div class="controls"><input type="text" name="vote_title" value="{votetitle}" maxlength="150" class="f_input" /></div>
	</div>
	
	<div style="display:none;" class="control-group addvote">	
		<div class="control-label">Вопрос</div> 
		<div class="controls"><input type="text" name="frage" value="{frage}" maxlength="150" class="f_input" /></div>
	</div>
	
	<div style="display:none;" class="control-group addvote">	
		<div class="control-label">Варианты ответов:<br />Каждая новая строка является новым вариантом ответа</div> 
		<div class="controls"><textarea name="vote_body" rows="10" class="f_textarea" >{votebody}</textarea><br /><input type="checkbox" name="allow_m_vote" value="1" {allowmvote}> Разрешить выбор нескольких вариантов</div>
	</div>
	
	<div class="control-group">	
		<div class="control-label">Краткая новость</div> 
		<div class="controls">
			{bbcode}
			<textarea name="short_story" id="short_story" onclick="setFieldName(this.name)" placeholder="Введите краткое содержание новости">{short-story}</textarea>
		</div>
	</div>
	
	<div class="control-group">	
		<div class="control-label">Полная новость</div> 
		<div class="controls">
			{bbcode}
			<textarea name="full_story" id="full_story" onclick="setFieldName(this.name)" placeholder="Введите полное содержание новости (не обязательно)">{full-story}</textarea>
		</div>
	</div>
	<div class="control-group xfields_wrap">
		<table>
			{xfields}
		</table>
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
				{sec_code}
				<input class="captcha_input" type="text" name="sec_code" id="sec_code" >
			</div>
		</div>
	</div>
	<hr>
	[/sec_code]

	<div class="control-group">
		<div class="controls">{admintag}</div>
	</div>

	<div class="control-group">
		<div class="controls">
			<button name="add" class="btn" type="submit">Отправить</button>
			<button name="nview" onclick="preview()" class="btn" type="submit">Просмотр</button>
		</div>
	</div>
</div> <!-- .form-horizontal -->