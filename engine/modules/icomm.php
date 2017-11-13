<?php

/*====================================================
	Author: RooTM
	Web-site: http://weboss.net/
	-----------------------------------------------------
	Доработал скрипт: ПафНутиЙ
	Web-site: http://pafnuty.name
=====================================================*/

if (!defined('DATALIFEENGINE')) {
	die("Hacking attempt!");
} //!defined('DATALIFEENGINE')

$max_comm  = (is_numeric(trim($max_comm))) ? $max_comm : 10;
$max_text  = (is_numeric(trim($max_text))) ? $max_text : 10000;
$max_title = (is_numeric(trim($max_title))) ? $max_title : 30;


if ($stop_category)
	$stop_category = "AND p.category NOT IN ({$stop_category})";
if ($from_category)
	$from_category = "AND p.category IN ({$from_category})";

$config_hash = md5($max_comm . $max_text . $max_title . $stop_category . $from_category);

$is_change = false;

if ($config['allow_cache'] != "yes") {
	$config['allow_cache'] = "yes";
	$is_change             = true;
} //$config['allow_cache'] != "yes"

$iComm = dle_cache("news_comm_iComm_", $config['skin'] . $config_hash);

if ($iComm === false) {
	if ($config['version_id'] < '9.6') {
		$flag = 'p.flag ,';
	} //$config['version_id'] < '9.6'
	else {
		$flag = '';
	}
	
	$db->query("SELECT c.id as comid, c.post_id, c.date, c.user_id, c.is_register, c.text, c.autor, c.email, c.approve, p.id, p.date as newsdate, p.title, p.category, p.comm_num, p.alt_name, {$flag} u.foto, u.user_group, u.user_id FROM " . PREFIX . "_comments as c, " . PREFIX . "_post as p, " . PREFIX . "_users as u WHERE p.id=c.post_id AND c.user_id = u.user_id AND c.approve = 1 {$stop_category} {$from_category} ORDER BY c.date DESC LIMIT 0, " . $max_comm);
	
	$tpl->load_template('icomm/icomm.tpl');
	
	while ($row = $db->get_row()) {
		$row['date'] = strtotime($row['date']);
		$row['category'] = intval($row['category']);
		
		$on_page = FALSE;
		if ($row['comm_num'] > $config['comm_nummers'])
			$on_page = 'page,1,' . ceil($row['comm_num'] / $config['comm_nummers']) . ',';
		

		if ($config['allow_alt_url'] == "yes") {
			if ($condition = $config['seo_type'] == 1 OR $config['seo_type'] == 2) {
				if ($row['category'] and $config['seo_type'] == 2) {
					$full_link = $config['http_home_url'] . get_url($row['category']) . "/" . $on_page . $row['id'] . "-" . $row['alt_name'] . ".html";
				} //$row['category'] and $config['seo_type'] == 2
				else {
					$full_link = $config['http_home_url'] . $on_page . $row['id'] . "-" . $row['alt_name'] . ".html";
				}
			} //$condition = $config['seo_type'] == 1 OR $config['seo_type'] == 2
			else {
				$full_link = $config['http_home_url'] . date('Y/m/d/', $row['date']) . $on_page . $row['alt_name'] . ".html";
			}
		} //$config['allow_alt_url'] == "yes"
		else {
			$full_link = $config['http_home_url'] . "index.php?newsid=" . $row['id'];
		}
		
		
		$full_link = $full_link . '#comment-id-' . $row['comid'];
		
		//======================================================================
		
		if (dle_strlen($row['text'], $config['charset']) > $max_text)
			$text = dle_substr($row['text'], 0, $max_text, $config['charset']) . " ...";
		else
			$text = $row['text'];
		
		//======================================================================
		
		if (dle_strlen($row['title'], $config['charset']) > $max_title)
			$title = dle_substr($row['title'], 0, $max_title, $config['charset']) . " ...";
		else
			$title = $row['title'];
		
		$title = stripslashes($title);
		
		//======================================================================
		
		if ($row['is_register'] == 1) {
			if ($config['allow_alt_url'] == "yes")
				$go_page = $config['http_home_url'] . "user/" . urlencode($row['autor']) . "/";
			else
				$go_page = "$PHP_SELF?subaction=userinfo&amp;user=" . urlencode($row['autor']);
			
			$author = "<a onclick=\"ShowProfile('" . urlencode($row['autor']) . "', '" . $go_page . "'); return false;\" href=\"" . $go_page . "\">" . $row['autor'] . "</a>";
			
		} //$row['is_register'] == 1
		else {
			$author = "<a href=\"mailto:" . $row['email'] . "\">" . $row['autor'] . "</a>";
			
		}
		
		//======================================================================
		
		$row['foto'] = ($row['foto'] == '') ? 'templates/' . $config['skin'] . '/icomm/noavatar.png' : 'uploads/fotos/' . $row['foto'];
		
		if ($config['allow_alt_url'] == "yes")
			$user_url = $config['http_home_url'] . "user/" . urlencode($row['autor']) . "/";
		else
			$user_url = "$PHP_SELF?subaction=userinfo&amp;user=" . urlencode($row['autor']);
		
		if ($row['is_register'] != 1)
			$user_url = 'mailto:' . $row['email'];
		
		$tpl->set('{text}', $text);
		
		if (date('Ymd', $row['date']) == date('Ymd', $_TIME)) {
			$tpl->set('{date}', $lang['time_heute'] . langdate(", H:i", $row['date']));
		} //date('Ymd', $row['date']) == date('Ymd', $_TIME)
		elseif (date('Ymd', $row['date']) == date('Ymd', ($_TIME - 86400))) {
			$tpl->set('{date}', $lang['time_gestern'] . langdate(", H:i", $row['date']));
		} //date('Ymd', $row['date']) == date('Ymd', ($_TIME - 86400))
		else {
			$tpl->set('{date}', langdate($config['timestamp_active'], $row['date']));
		}
		$tpl->copy_template = preg_replace("#\{date=(.+?)\}#ie", "langdate('\\1', '{$row['date']}')", $tpl->copy_template);
		
		$tpl->set('{foto}', $config['http_home_url'] . $row['foto']);
		$tpl->set('{user_url}', $user_url);
		$tpl->set('{user_name}', $row['autor']);
		$tpl->set('{title}', $title);
		$tpl->set('{long_title}', stripslashes($row['title']));
		$tpl->set('{author}', $author);
		$tpl->set('{full_link}', $full_link);
		$tpl->set('{comm_num}', $row['comm_num']);
		
		$tpl->compile('icomm');
		
		//======================================================================
		
	} //$row = $db->get_row()
	
	$db->free();
	$tpl->clear();
	
	$iComm = $tpl->result['icomm'];
	
	if (preg_match_all('/<!--dle_spoiler-->(.*?)<!--\/dle_spoiler-->/is', $iComm, $spoilers)) {
		foreach ($spoilers as $spoiler) {
			$iComm = str_replace($spoiler, '<div class="quote">Для просмотра содержимого спойлера, перейдите к выбранному комментарию.</div>', $iComm);
		} //$spoilers as $spoiler
		
	} //preg_match_all('/<!--dle_spoiler-->(.*?)<!--\/dle_spoiler-->/is', $iComm, $spoilers)
	
	if (!$iComm)
		$iComm = '<div class="icomm_empty"><b>Нет комментариев</b></div>';
	create_cache("news_comm_iComm_", $iComm, $config['skin'] . $config_hash);
} //$iComm === false

//======================================================================

if ($user_group[$member_id['user_group']]['allow_hide'])
	$iComm = preg_replace("'\[hide\](.*?)\[/hide\]'si", "\\1", $iComm);
else
	$iComm = preg_replace("'\[hide\](.*?)\[/hide\]'si", "<div class=\"quote\">" . $lang['news_regus'] . "</div>", $iComm);

//======================================================================

// Строка с копирайтами
echo '<div class="iComm" id="iComm"><ul class="lastcomm">' . $iComm . '</ul><!-- .lastcomm --></div><div style="font-size: 9px; padding-right: 3px; text-align: right;">Copyright &copy; <a href="http://weboss.net/" target="_blank" style="text-decoration: none; font-size: 9px;">WEBoss.Net</a> & <a href="http://codingrus.ru/" target="_blank" style="text-decoration: none; font-size: 9px;" title="delphi">Delphi</a></div>';

// строка без копирайтов 
// echo '<ul class="lastcomm">' .$iComm. '</ul> <!-- .lastcomm -->';

if ($is_change)
	$config['allow_cache'] = false;

?>