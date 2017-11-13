<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width">
		{headers}
		<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=PT+Sans+Narrow&subset=latin,cyrillic">
		<link rel="stylesheet" href="/engine/classes/min/index.php?charset=windows-1251&amp;f={THEME}/css/main.css&amp;365">
		<script src="/engine/classes/min/index.php?charset=windows-1251&amp;f={THEME}/js/vendor/modernizr.custom.min.js,{THEME}/js/vendor/jquery.cslider.min.js,{THEME}/js/vendor/jquery.cookie.js,{THEME}/js/vendor/tooltip.js,{THEME}/js/vendor/jquery.formstyler.min.js,{THEME}/js/vendor/jquery.sticky-kit.min.js,{THEME}/js/vendor/jquery.autoresize.min.js,{THEME}/js/main.js&amp;365"></script>
		<!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]-->		
	</head>
	<body>
		{AJAX}
		<!--[if lt IE 8]>
			<div class="chromeframe clearfix"> 
				<div class="fleft">
					<p><b>ВНИМАНИЕ! Вы используете устаревший браузер </b></p>
					<p>Данный сайт построен на передовых, современных технологиях и не поддерживает Internet Explorer устаревших версий.</p>
					<p>Настоятельно Вам рекомендуем выбрать и установить любой из современных браузеров. Это бесплатно и займет всего несколько минут.</p>
				</div>
				<div class="fright">
					<p>Предлагаемые для использования браузеры:</p>
					<span class="but but-ie hidden-link" data-href="http://www.microsoft.com/windows/Internet-explorer/default.aspx" title="Internet Explorer">Internet Explorer</span>
					<span class="but but-opera hidden-link" data-href="http://www.opera.com/download/" title="Opera Browser">Opera Browser</span>
					<span class="but but-firefox hidden-link" data-href="http://www.mozilla.com/firefox/" title="Mozilla Firefox">Mozilla Firefox</span>
					<span class="but but-chrome hidden-link" data-href="http://www.google.com/chrome" title="Google Chrome">Google Chrome</span>
					<span class="but but-safari hidden-link" data-href="http://www.apple.com/safari/download/" title="Apple Safari">Apple Safari</span>
				</div>
				<div class="clr"></div>
				<div class="fleft">Так же можно установить плагин <a class="hidden-link" href="#" data-href="http://www.google.com/chromeframe?hl=ru-RU" taraget="_blank">Google Chrome Frame</a> для обеспечения совместимости Вашего браузера с этим сайтом.</div>
				<div class="fright">
					<a class="closeframe" href="#" title="Закрыть это уведомление">Закрыть</a>
				</div>
			</div>
		<![endif]-->
		<div class="wrapper">
			<div class="main-container">
				<header>
					<div class="container header">
						<a class="ir logo fleft" href="/"></a>
						{login}
						<div class="clr"></div>
						<nav>
						<!--	{include file="includes/topnav.tpl"} -->
						</nav> 
					</div> <!-- .container.header --> 			
				</header>
				{speedbar}
				[aviable=main]
					{include file="includes/slider.tpl"}
					{include file="includes/topposts.tpl"}
				[/aviable]
				<div class="container">
					<div class="row" id="portamento-wrapper">
						[not-aviable=showfull|pm|addnews|userinfo|feedback|lostpassword|register|search|stats]
						{include file="includes/sidebar.tpl"}
						[/not-aviable]
						
						<section>
							<div class="col2[aviable=pm|addnews|userinfo|feedback|lostpassword|register|search|stats] col3[/aviable]">
								{info}
								{content}

							</div> <!-- .col2 -->
						</section>

						[aviable=showfull]
						{include file="includes/sidebar.tpl"}
						[/aviable]
						
					</div> <!-- .row -->
				</div> <!-- .container -->
				<footer>
					<div class="container footer">
						<div class="row clearfix">
							<div class="col1">
								<h4>Контакты</h4>
								<p>Далеко-далеко за словесными горами в стране, гласных и согласных живут рыбные тексты. Живет щеке запятых родного которое путь которой проектах своего они агенство. То, образ, все пустился эта ее единственное буквоград первую.</p>
							</div>asdasdasdasd
							<div class="col1">
								<h4>Правовая информация</h4>
								<p>test git </p>
							</div>
							<div class="col1">
								<div class="social_block clearfix">
									<h4>Соцсети 11и счётчики</h4>
									<a class="ttp social-icons twitter" title="twitter" href="#"></a>
									<a class="ttp social-icons facebook" title="facebook" href="#"></a>
									<a class="ttp social-icons google-plus" title="google-plus" href="#"></a>
									<a class="ttp social-icons skype" title="skype" href="#"></a>
									<a class="ttp social-icons rss-chanel" title="rss-канал" href="#"></a>
									<a class="ttp social-icons email" title="email" href="#"></a>
								</div> <!-- .social_block -->

								<div class="counters clearfix">
									<img src="{THEME}/images/88-31.png" alt="Счётчик" class="fleft">
									<img src="{THEME}/images/88-31.png" alt="Счётчик" class="fleft">
									<img src="{THEME}/images/88-31.png" alt="Счётчик" class="fleft"> 
								</div> <!-- .counters -->
								<p>&copy;MMXVII EFB-KazakhstaN</p>
							</div>
						</div> <!-- .row -->
						<div class="copy">
							EFB-Kazakhstan
						</div>
						<div class="up_but ir">&nbsp;</div>
					</div> <!-- .footer -->
				</footer>		
			</div> <!-- .main-container -->
		</div> <!-- .wrapper -->
	</body>
</html>