	[pmlist]<div class="border-header"><h1>Список сообщений</h1></div>[/pmlist]
	[newpm]<div class="border-header"><h1>Новое сообщение</h1></div>[/newpm]
	[readpm]<div class="border-header"><h1>Ваши сообщения</h1></div>[/readpm]

<div class="personal-pages">
	<p>
		<span class="inbox btn-wrap">[inbox]Входящие сообщения[/inbox]</span>
		<span class="outbox btn-wrap">[outbox]Отправленные сообщения[/outbox]</span>
		<span class="new-pm btn-wrap">[new_pm]Отправить сообщение[/new_pm]</span>
	</p>

	[pmlist]
	<div class="table-style">{pmlist}</div>
	<hr>
	<p>		
		Папки персональных сообщений заполнены на: {proc-pm-limit}% от лимита ({pm-limit} сообщений)
		<div class="pollprogress"><span class="poll3" style="width:{proc-pm-limit}%;">{proc-pm-limit}%</span></div>
	</p>
	[/pmlist]
	[newpm]
	<div class="comment-item">
		<div class="comment-item-avatar">
			<img id="commentator_avatar" src="{THEME}/images/noavatar.png" alt="Ваш аватар">
		</div>
		<div class="comment-body">
			<div class="comment-header">
				От: <b id="commentator_name">Гость</b>
				Кому: <input type="text" name="name" value="{author}" placeholder="Введите имя"> 
				<br>
				<input style="width: 508px;" type="text" name="subj" value="{subj}" placeholder="Тема">				

			</div>
			<div class="comment-text clearfix" style="width: 510px;">
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
				<hr>
				[/sec_code]
				<label class="fleft" for="outboxcopy"><input type="checkbox" id="outboxcopy" name="outboxcopy" value="1" /> Сохранить копию</label>
				<div class="fright">
					<button type="submit" name="submit" class="btn btn-small">Отправить</button>
					<button type="button" class="btn btn-small" onclick="dlePMPreview()">Просмотр</button>
				</div>
				<div class="clr"></div>
			</div> <!-- .comment-text -->
		</div>
	</div> <!-- .comment-item -->
	[/newpm]
	[readpm]
	<h3>{subj}</h3>
	<div class="comment-item" itemscope itemtype="http://schema.org/UserComments" itemprop="comment">
		<div class="comment-item-avatar">
			<img src="{foto}" alt="Фото юзера {login}">
		</div>
		<div class="comment-body">
			<div class="comment-header">
				<b>{author}</b> {date}
			</div>
			<div class="comment-text clearfix">
				{text}
			</div> <!-- .comment-text -->
			<div class="comment-footer">
				<span class="comm-del">[del]Удалить[/del]</span> 
				<span class="comm-quote">[reply]Ответить[/reply]</span>
			</div>
		</div>
	</div> <!-- .comment-item -->
	[/readpm]
</div>