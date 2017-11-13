/*! 
�����: �������� http://pafnuty.name 
*/

jQuery(document).ready(function ($) {

	// ������-������
	// ����������
	$('body').on('click', '[data-target-blank]', function () {
		window.open($(this).data('targetBlank'));
	});

	// �������
	$('body').on('click', '[data-target-self]', function () {
		window.location.href = ($(this).data('targetSelf'));
	});

	// ������������� speedbar
	if ($('#dle-speedbar').length > 0) {
		speedbarIn = $('#dle-speedbar').remove().html();
		speedbarOut = speedbarIn.replace(/�/g, '<span class="ir speedbar-arr">>></span>');
		$('.speedbar').html(speedbarOut);
	};

	// ��������� �������������
	$('.username').click(function () {
		$(this).next().slideToggle(500);
	});

	// ���������� �������
	$('input[type="checkbox"], input[type="radio"], input[type="file"], select:not([multiple])').styler();
	// ������������� styler ��� ������ ����� ������
	$('#doclear').click(function () {
		$('input[type="checkbox"], input[type="radio"], input[type="file"], select:not([multiple])').trigger('refresh');
	});


	// ����� ��� ���������� �������� ���� ������� � ������ ������ ������ � ���������
	$('#b_font li').each(function (e) {
		$(this).css({
			'font-family': $(this).text() + ', sans-serif'
		});
	});

	// �������� ����� � ������ ���������� ��������
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
	// ���������� textarea � ������
	if ($('textarea').length > 0) {
		$('textarea').autosize();
	};
	$('.comment-text').on('click, focus', 'textarea', function () {
		$(this).autosize();
	});

	// ���������� ������ �� ������� � personal-header
	$('.ph-profile-link').attr({
		'href': $('.profile-link').attr('href')
	});

	// ������ ������������ ���� �������� ������
	$("#dle-captcha").attr({
		"title": "�������� �� �������� ��� ������ ������� ����"
	}).addClass("ttp");
	$("#dle-captcha").on("click", "img", function () {
		$("#dle-captcha a").trigger("click");
		return false;
	});


	// ��������� ����
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

	// ����� ������� ��������
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

	// ��������� ������ �����

	if ($('.tags-cloud-wrap').length > 0) {
		tagsIn = $('.tags-cloud-wrap').remove().html();
		tagsOut = tagsIn.replace(/,/g, "");
		$('.tags-cloud').html(tagsOut);
	};

	// �������������� ������� ������������
	$('.btn-useredit').click(function () {
		$('.userinfo-edit, .userinfo-view').slideToggle(500);
	});

	// �������
	$('#da-slider').cslider();

	// ������
	$('.ttp, .tags-cloud a').tooltip();
	$('.bb-btn').tooltip({
		container: 'body'
	});

	// ���������� ������
	$('.add-vote-btn').click(function () {
		$('.addvote').slideToggle(500);
		$(this).toggleClass('active');
	});

});