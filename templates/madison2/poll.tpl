<div class="vote-block poll-block clearfix">
	<div class="border-header clearfix">
		<div class="like_h4">{title}</div>
	</div>
	<b>{question}</b>	
	[voted]<div>Всего проголосовало: {votes}</div>[/voted]
	{list}
	[not-voted]
		<input type="hidden" name="vote_action" value="vote" />
		<input type="hidden" name="vote_id" id="vote_id" value="{vote_id}" />
		<p>
			<button class="btn" type="submit" onclick="doPoll('vote', '{news-id}'); return false;">Голосовать</button>
			<button class="btn" type="button" onclick="doPoll('results', '{news-id}'); return false;">Результаты</button>
		</p>
	[/not-voted]
</div> <!-- .vote-block -->