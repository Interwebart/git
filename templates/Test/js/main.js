/*! 
Автор: ПафНутиЙ http://pafnuty.name 
*/

jQuery(document).ready(function ($) {

	// Псевдо-ссылки
	// Внутренние
	$('body').on('click', '[data-target-blank]', function () {
		window.open($(this).data('targetBlank'));
	});

	// Внешние
	$('body').on('click', '[data-target-self]', function () {
		window.location.href = ($(this).data('targetSelf'));
	});

	// Кастомизируем speedbar
	if ($('#dle-speedbar').length > 0) {
		speedbarIn = $('#dle-speedbar').remove().html();
		speedbarOut = speedbarIn.replace(/»/g, '<span class="ir speedbar-arr">>></span>');
		$('.speedbar').html(speedbarOut);
	};

	// Открываем логинпанельку
	$('.username').click(function () {
		$(this).next().slideToggle(500);
	});

	// Стилизация инпутов
	$('input[type="checkbox"], input[type="radio"], input[type="file"], select:not([multiple])').styler();
	// Перезагружаем styler при сбросе формы поиска
	$('#doclear').click(function () {
		$('input[type="checkbox"], input[type="radio"], input[type="file"], select:not([multiple])').trigger('refresh');
	});


	// Фишка для стилизации внешнего вида шрифтов в списке выбора шрифта в редакторе
	$('#b_font li').each(function (e) {
		$(this).css({
			'font-family': $(this).text() + ', sans-serif'
		});
	});

	// Аватарка рядом с формой добавления коммента
	u29Ava = $("#user_avatar");
	aName = $('#author_name').text();
	cAva = $("#commentator_avatar");
	if (cAva.length > 0) {
		if (u29Ava.prop("src") != cAva.prop("src")) {
			cAva.prop("src", u29Ava.prop("src"));
		};
		if (aName != '') {
			$("#commentator_name").text(aName);
		};
	};
	// Авторесайз textarea в формах
	if ($('textarea').length > 0) {
		$('textarea').autosize();
	};
	$('.comment-text').on('click, focus', 'textarea', function () {
		$(this).autosize();
	});

	// Определяем ссылку на профиль в personal-header
	$('.ph-profile-link').attr({
		'href': $('.profile-link').attr('href')
	});

	// Делаем кликабельной саму картинку каптчи
	$("#dle-captcha").attr({
		"title": "Кликните на картинку для показа другого кода"
	}).addClass("ttp");
	$("#dle-captcha").on("click", "img", function () {
		$("#dle-captcha a").trigger("click");
		return false;
	});


	// Рекламный блок
	$(window).on('load', function() {
		$('.portamento_block').stick_in_parent({
			parent: '#portamento-wrapper',
			offset_top: 20
		});		
	});



	$('.up_but').click(function () {
		$("html, body").animate({
			scrollTop: 0
		}, "1200")
	});

	// Показ похожих новостей
	if ($('#showrelated').length) {
		showRelated = $('#showrelated');

		showRelated.find('ul').addClass($.cookie("related_block"));
		if ($.cookie("related_block") == 'hide') {
			$('#showrelated .close-block, #showrelated .open-block').toggleClass('hide');
		};

		$(window).scroll(function () {
			distanceTop = $('footer').offset().top - $(window).height();
			if ($(window).scrollTop() > distanceTop)
				showRelated.animate({
					'left': '20px'
				}, 700);
			else
				showRelated.stop(true).animate({
					'left': '-480px'
				}, 200);
		});

		$('#showrelated .close-block, #showrelated .open-block').click(function () {
			targEl = showRelated.find('ul');
			if (targEl.hasClass('hide')) {
				targEl.slideDown(300, function () {
					$.cookie("related_block", "show", {
						path: "/",
						expires: 7
					});
					$(this).removeClass('show, hide').addClass($.cookie("related_block"));
				});

			}
			else {
				targEl.slideUp(300, function () {
					$.cookie("related_block", "hide", {
						path: "/",
						expires: 7
					});
					$(this).removeClass('show, hide').addClass($.cookie("related_block"));
				});
			};
			$('#showrelated .close-block, #showrelated .open-block').toggleClass('hide');
		});
	}

	// Обработка облака тегов

	if ($('.tags-cloud-wrap').length > 0) {
		tagsIn = $('.tags-cloud-wrap').remove().html();
		tagsOut = tagsIn.replace(/,/g, "");
		$('.tags-cloud').html(tagsOut);
	};

	// Редактирование профиля пользователя
	$('.btn-useredit').click(function () {
		$('.userinfo-edit, .userinfo-view').slideToggle(500);
	});

	// Слайдер
	$('#da-slider').cslider();

	// Тултип
	$('.ttp, .tags-cloud a').tooltip();
	$('.bb-btn').tooltip({
		container: 'body'
	});

	// Добавление опроса
	$('.add-vote-btn').click(function () {
		$('.addvote').slideToggle(500);
		$(this).toggleClass('active');
	});

});