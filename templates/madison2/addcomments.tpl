<div class="comment-item">
	<div class="comment-item-avatar">
		<img id="commentator_avatar" src="{THEME}/images/noavatar.png" alt="Ваш аватар">
	</div>
	<div class="comment-body">
		<div class="comment-header">
			Вы вошли как <b id="commentator_name">Гость</b>
			[not-logged]
			<input type="text" name="name" id="name" placeholder="Ваше имя"> &nbsp;&nbsp; <input type="text" name="mail" id="mail" placeholder="Ваш email">
			[/not-logged]
		</div>
		<div class="comment-text clearfix">
			{editor}
			[question]
			<p>Вопрос:	<b>{question}</b></p>
			Ответ: &nbsp; <input type="text" name="question_answer" id="question_answer" >
			<hr>
			[/question]
			[sec_code]
			<div class="seccode">
				{sec_code}
				<input class="captcha_input" type="text" name="sec_code" id="sec_code" >
			</div>
			[/sec_code]
			<button type="submit" name="submit" class="btn btn-small fright">Добавить</button>
			<div class="clr"></div>
		</div> <!-- .comment-text -->
	</div>
</div> <!-- .comment-item -->