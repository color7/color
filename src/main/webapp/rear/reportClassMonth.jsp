<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<link href="./images/admincg/admincg.css" rel="stylesheet" type="text/css">
<title></title><script type="text/javascript">var IMGDIR = './images/';var attackevasive = '0';</script>
<script src="./javascript/common.js" type="text/javascript"></script>
<script src="./javascript/menu.js" type="text/javascript"></script>
<script src="./javascript/ajax.js" type="text/javascript"></script>
<script src="./javascript/frank.js" type="text/javascript"></script>
<script type="text/javascript">
function checkalloption(form, value) {
	for(var i = 0; i < form.elements.length; i++) {
		var e = form.elements[i];
		if(e.value == value && e.type == 'radio' && e.disabled != true) {
			e.checked = true;
		}
	}
}
function checkAll(type, form, value, checkall, changestyle) {
	var checkall = checkall ? checkall : 'chkall';
	for(var i = 0; i < form.elements.length; i++) {
		var e = form.elements[i];
		if(type == 'option' && e.type == 'radio' && e.value == value && e.disabled != true) {
			e.checked = true;
		} else if(type == 'value' && e.type == 'checkbox' && e.getAttribute('chkvalue') == value) {
			e.checked = form.elements[checkall].checked;
		} else if(type == 'prefix' && e.name && e.name != checkall && (!value || (value && e.name.match(value)))) {
			e.checked = form.elements[checkall].checked;
			if(changestyle && e.parentNode && e.parentNode.tagName.toLowerCase() == 'li') {
				e.parentNode.className = e.checked ? 'checked' : '';
			}
		}
	}
}

function checkallvalue(form, value, checkall) {
	var checkall = checkall ? checkall : 'chkall';
	for(var i = 0; i < form.elements.length; i++) {
		var e = form.elements[i];
		if(e.type == 'checkbox' && e.value == value) {
			e.checked = form.elements[checkall].checked;
		}
	}
}

function zoomtextarea(objname, zoom) {
	zoomsize = zoom ? 10 : -10;
	obj = $(objname);
	if(obj.rows + zoomsize > 0 && obj.cols + zoomsize * 3 > 0) {
		obj.rows += zoomsize;
		obj.cols += zoomsize * 3;
	}
}

function redirect(url) {
	window.location.replace(url);
}

var collapsed = getcookie('cg_szyx_cookie_collapse');
function collapse_change(menucount) {

	if($('menu_' + menucount).style.display == 'none') {
		$('menu_' + menucount).style.display = '';collapsed = collapsed.replace('[' + menucount + ']' , '');
		$('menuimg_' + menucount).src = './images//admincg/menu_reduce.gif';
		
	} else {

		$('menu_' + menucount).style.display = 'none';collapsed += '[' + menucount + ']';
		$('menuimg_' + menucount).src = './images//admincg/menu_add.gif';
	}
	setcookie('cg_szyx_cookie_collapse', collapsed, 2592000);
}
</script>
</head>

<body leftmargin="10" topmargin="10">
<div id="append_parent"></div>
<table width="99%" align="center" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td>
<script language="JavaScript">
<!-- 
function openwinchuhuo(url) {
var iWidth=600; //窗口宽度 
var iHeight=600;//窗口高度 
var iTop=(window.screen.height-iHeight)/2; 
var iLeft=(window.screen.width-iWidth)/2; 
window.open(url,"Detail2111572256","Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no, Width="+iWidth+" ,Height="+iHeight+",top="+iTop+",left="+iLeft); 
}

//--> 
</script>
	<style media="print"> .Noprint{display:none;} </style> <table class="Noprint" width="100%" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide"><tbody><tr><td><table width="100%" style="border:none;" border="0" cellpadding="0" cellspacing="0"><tbody><tr style="border:none;"><td style="border:none;" width="15%"><a href="#" onclick=" parent.main.location='?action=home';return false;">位置</a>&nbsp;»&nbsp;月分类帐</td>
		<td width="85%" style="border:none;text-align:right;padding-right:10px;"><a href="reportClassContribution.html" target="main"><b>贡献度</b></a> | <a href="reportClassDay.html" target="main"><b>日分类帐</b></a> | <a href="reportClassMonth.html" target="main" class="meuntop"><b>月分类帐</b></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><br>
<table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%">
<form method="post" name="companyform" action="index.php?action=reportclass&amp;joaction=month&amp;zizhanghao="></form>
<input type="hidden" name="formhash" value="82c0edaa">		
<input type="hidden" name="s_ym" value="">	
<tbody><tr class="header"><td colspan="5">
月分类帐&nbsp;&nbsp;&nbsp;|&nbsp;<a href="index.php?action=reportclass&amp;joaction=month&amp;s_ym=201509&amp;zizhanghao=" class="reporttitle">2015年09月</a>&nbsp;|&nbsp;<a href="index.php?action=reportclass&amp;joaction=month&amp;s_ym=201510&amp;zizhanghao=" class="reporttitle">2015年10月</a>&nbsp;|&nbsp;<a href="index.php?action=reportclass&amp;joaction=month" class="meuntop">全部</a>

</td><td colspan="2">
<select name="s_issueno_start" id="s_issueno_start" onchange="companyform.submit()">
<option value="15122">15122</option><option value="15121">15121</option><option value="15120">15120</option><option value="15119" selected="">15119</option></select>
&gt;&gt;
<select name="s_issueno_end" id="s_issueno_end" onchange="companyform.submit()">
<option value="15122" selected="">15122</option><option value="15121">15121</option><option value="15120">15120</option><option value="15119">15119</option></select>
</td>
</tr>


<tr class="reportTop">
	<td style="width:14%">日期</td>
	<td style="width:14%">类别</td>
	<td style="width:13%">笔数</td>
	<td style="width:13%">下注金额</td>
	<td style="width:13%">回水</td>
	<td style="width:13%">中奖</td>
	<td style="width:13%">盈亏</td>
</tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><font color="red"><b>总合计</b></font></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_1heji');"><img id="menuimg_showclass_1heji" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">144658</td>
<td class="altbg2 report_class">2540922.7</td>
<td class="altbg1 report_class">67857.17</td>
<td class="altbg2 report_class">3007691</td>
<td class="altbg1 report_class ">-534620</td></tr>
<tr style="display:none;" id="menu_showclass_1heji"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">36968</td>
<td width="13%" class="altbg2 report_class">2140145</td>
<td width="13%" class="altbg1 report_class">49652.22</td>
<td width="13%" class="altbg2 report_class">2315083</td>
<td width="13%" class="altbg1 report_class ">-224586</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">2919</td>
<td width="13%" class="reportNow_z report_class">349079</td>
<td width="13%" class="reportNow_z report_class">6868.72</td>
<td width="13%" class="reportNow_z report_class">501520</td>
<td width="13%" class="reportNow_z report_class ">-159309</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">2413</td>
<td width="13%" class="reportNow_z report_class">219121</td>
<td width="13%" class="reportNow_z report_class">3451.98</td>
<td width="13%" class="reportNow_z report_class">278988</td>
<td width="13%" class="reportNow_z report_class ">-63317</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">24441</td>
<td width="13%" class="reportNow_z report_class">1122051</td>
<td width="13%" class="reportNow_z report_class">26829.4</td>
<td width="13%" class="reportNow_z report_class">1206477</td>
<td width="13%" class="reportNow_z report_class ">-111253</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">1646</td>
<td width="13%" class="reportNow_z report_class">73655</td>
<td width="13%" class="reportNow_z report_class">2329.74</td>
<td width="13%" class="reportNow_z report_class">62234</td>
<td width="13%" class="reportNow_z report_class report_1">9093</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">3731</td>
<td width="13%" class="reportNow_z report_class">265226</td>
<td width="13%" class="reportNow_z report_class">7469.75</td>
<td width="13%" class="reportNow_z report_class">163174</td>
<td width="13%" class="reportNow_z report_class report_1">94586</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">1818</td>
<td width="13%" class="reportNow_z report_class">111013</td>
<td width="13%" class="reportNow_z report_class">2702.7</td>
<td width="13%" class="reportNow_z report_class">102694</td>
<td width="13%" class="reportNow_z report_class report_1">5620</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">24545</td>
<td width="13%" class="altbg2 report_class">258705.9</td>
<td width="13%" class="altbg1 report_class">9917.87</td>
<td width="13%" class="altbg2 report_class">647317</td>
<td width="13%" class="altbg1 report_class ">-398529</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">7249</td>
<td width="13%" class="reportNow_z report_class">84830.7</td>
<td width="13%" class="reportNow_z report_class">2271.13</td>
<td width="13%" class="reportNow_z report_class">202773</td>
<td width="13%" class="reportNow_z report_class ">-120213</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">5049</td>
<td width="13%" class="reportNow_z report_class">36939.9</td>
<td width="13%" class="reportNow_z report_class">1999.86</td>
<td width="13%" class="reportNow_z report_class">95966</td>
<td width="13%" class="reportNow_z report_class ">-61024</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">6078</td>
<td width="13%" class="reportNow_z report_class">81783.1</td>
<td width="13%" class="reportNow_z report_class">4200.51</td>
<td width="13%" class="reportNow_z report_class">122341</td>
<td width="13%" class="reportNow_z report_class ">-44758</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">6169</td>
<td width="13%" class="reportNow_z report_class">55152.2</td>
<td width="13%" class="reportNow_z report_class">1446.37</td>
<td width="13%" class="reportNow_z report_class">226237</td>
<td width="13%" class="reportNow_z report_class ">-172531</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">83144</td>
<td width="13%" class="altbg2 report_class">142021.8</td>
<td width="13%" class="altbg1 report_class">8281.83</td>
<td width="13%" class="altbg2 report_class">45291</td>
<td width="13%" class="altbg1 report_class report_1">88451</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class ">1</td>
<td width="13%" class="altbg2 report_class">50</td>
<td width="13%" class="altbg1 report_class">5.25</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class report_1">45</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class ">0</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_2heji');"><img id="menuimg_showclass_2heji" src="./images/admincg/menu_add.gif" border="0">占成合计</a></td>
<td class="altbg1 report_class"></td>
<td class="altbg2 report_class"></td>
<td class="altbg1 report_class"></td>
<td class="altbg2 report_class"></td>
<td class="altbg1 report_class "></td></tr>
<tr style="display:none;" id="menu_showclass_2heji"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class">0</td>
<td width="13%" class="reportNow_z report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class ">0</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class ">0</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;&amp;s_issueno=15121" title="">10-16(15121)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_115121');"><img id="menuimg_showclass_115121" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">10132</td>
<td class="altbg2 report_class">192520.4</td>
<td class="altbg1 report_class">7775.61</td>
<td class="altbg2 report_class">374466</td>
<td class="altbg1 report_class ">-189721</td></tr>
<tr style="display:none;" id="menu_showclass_115121"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">3598</td>
<td width="13%" class="altbg2 report_class">154818</td>
<td width="13%" class="altbg1 report_class">5706.94</td>
<td width="13%" class="altbg2 report_class">208266</td>
<td width="13%" class="altbg1 report_class ">-59155</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">386</td>
<td width="13%" class="reportNow_z report_class">54675</td>
<td width="13%" class="reportNow_z report_class">1662.34</td>
<td width="13%" class="reportNow_z report_class">101136</td>
<td width="13%" class="reportNow_z report_class ">-48124</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">201</td>
<td width="13%" class="reportNow_z report_class">15040</td>
<td width="13%" class="reportNow_z report_class">585.23</td>
<td width="13%" class="reportNow_z report_class">4650</td>
<td width="13%" class="reportNow_z report_class report_1">9805</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">2377</td>
<td width="13%" class="reportNow_z report_class">62643</td>
<td width="13%" class="reportNow_z report_class">2684.36</td>
<td width="13%" class="reportNow_z report_class">66583</td>
<td width="13%" class="reportNow_z report_class ">-6624</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">124</td>
<td width="13%" class="reportNow_z report_class">4992</td>
<td width="13%" class="reportNow_z report_class">71.84</td>
<td width="13%" class="reportNow_z report_class">10024</td>
<td width="13%" class="reportNow_z report_class ">-5104</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">393</td>
<td width="13%" class="reportNow_z report_class">14595</td>
<td width="13%" class="reportNow_z report_class">480.1</td>
<td width="13%" class="reportNow_z report_class">25703</td>
<td width="13%" class="reportNow_z report_class ">-11589</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">117</td>
<td width="13%" class="reportNow_z report_class">2873</td>
<td width="13%" class="reportNow_z report_class">223.09</td>
<td width="13%" class="reportNow_z report_class">170</td>
<td width="13%" class="reportNow_z report_class report_1">2480</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">2355</td>
<td width="13%" class="altbg2 report_class">23100.5</td>
<td width="13%" class="altbg1 report_class">1099.37</td>
<td width="13%" class="altbg2 report_class">150700</td>
<td width="13%" class="altbg1 report_class ">-128699</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">501</td>
<td width="13%" class="reportNow_z report_class">3847</td>
<td width="13%" class="reportNow_z report_class">227.4</td>
<td width="13%" class="reportNow_z report_class">40000</td>
<td width="13%" class="reportNow_z report_class ">-36381</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">474</td>
<td width="13%" class="reportNow_z report_class">5542</td>
<td width="13%" class="reportNow_z report_class">265.51</td>
<td width="13%" class="reportNow_z report_class">85200</td>
<td width="13%" class="reportNow_z report_class ">-79924</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">605</td>
<td width="13%" class="reportNow_z report_class">5490</td>
<td width="13%" class="reportNow_z report_class">352.57</td>
<td width="13%" class="reportNow_z report_class">17000</td>
<td width="13%" class="reportNow_z report_class ">-11863</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">775</td>
<td width="13%" class="reportNow_z report_class">8221.5</td>
<td width="13%" class="reportNow_z report_class">253.89</td>
<td width="13%" class="reportNow_z report_class">8500</td>
<td width="13%" class="reportNow_z report_class ">-533</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">4179</td>
<td width="13%" class="altbg2 report_class">14601.9</td>
<td width="13%" class="altbg1 report_class">969.3</td>
<td width="13%" class="altbg2 report_class">15500</td>
<td width="13%" class="altbg1 report_class ">-1868</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;&amp;s_issueno=15120" title="">10-13(15120)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_115120');"><img id="menuimg_showclass_115120" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">23436</td>
<td class="altbg2 report_class">317609.8</td>
<td class="altbg1 report_class">11386.6</td>
<td class="altbg2 report_class">160115</td>
<td class="altbg1 report_class report_1">146109</td></tr>
<tr style="display:none;" id="menu_showclass_115120"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">5133</td>
<td width="13%" class="altbg2 report_class">238810</td>
<td width="13%" class="altbg1 report_class">8115.15</td>
<td width="13%" class="altbg2 report_class">92115</td>
<td width="13%" class="altbg1 report_class report_1">138581</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">363</td>
<td width="13%" class="reportNow_z report_class">33403</td>
<td width="13%" class="reportNow_z report_class">1334.77</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">32069</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">228</td>
<td width="13%" class="reportNow_z report_class">9740</td>
<td width="13%" class="reportNow_z report_class">281.98</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">9459</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">3435</td>
<td width="13%" class="reportNow_z report_class">91344</td>
<td width="13%" class="reportNow_z report_class">2472.22</td>
<td width="13%" class="reportNow_z report_class">48566</td>
<td width="13%" class="reportNow_z report_class report_1">40307</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">289</td>
<td width="13%" class="reportNow_z report_class">17891</td>
<td width="13%" class="reportNow_z report_class">1138.89</td>
<td width="13%" class="reportNow_z report_class">20174</td>
<td width="13%" class="reportNow_z report_class ">-3422</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">622</td>
<td width="13%" class="reportNow_z report_class">74939</td>
<td width="13%" class="reportNow_z report_class">2076.59</td>
<td width="13%" class="reportNow_z report_class">11675</td>
<td width="13%" class="reportNow_z report_class report_1">61188</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">196</td>
<td width="13%" class="reportNow_z report_class">11493</td>
<td width="13%" class="reportNow_z report_class">810.7</td>
<td width="13%" class="reportNow_z report_class">11700</td>
<td width="13%" class="reportNow_z report_class ">-1018</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">3844</td>
<td width="13%" class="altbg2 report_class">52649</td>
<td width="13%" class="altbg1 report_class">1703.36</td>
<td width="13%" class="altbg2 report_class">68000</td>
<td width="13%" class="altbg1 report_class ">-17055</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">1154</td>
<td width="13%" class="reportNow_z report_class">4911</td>
<td width="13%" class="reportNow_z report_class">215.27</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">4696</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">753</td>
<td width="13%" class="reportNow_z report_class">8618</td>
<td width="13%" class="reportNow_z report_class">267.75</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">8351</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">1268</td>
<td width="13%" class="reportNow_z report_class">28981</td>
<td width="13%" class="reportNow_z report_class">989.94</td>
<td width="13%" class="reportNow_z report_class">68000</td>
<td width="13%" class="reportNow_z report_class ">-40009</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">669</td>
<td width="13%" class="reportNow_z report_class">10139</td>
<td width="13%" class="reportNow_z report_class">230.41</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">9909</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">14459</td>
<td width="13%" class="altbg2 report_class">26150.8</td>
<td width="13%" class="altbg1 report_class">1568.09</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class report_1">24583</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;&amp;s_issueno=15119" title="">10-11(15119)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_115119');"><img id="menuimg_showclass_115119" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">19910</td>
<td class="altbg2 report_class">224089.8</td>
<td class="altbg1 report_class">4857.2</td>
<td class="altbg2 report_class">193159</td>
<td class="altbg1 report_class report_1">26075</td></tr>
<tr style="display:none;" id="menu_showclass_115119"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">4853</td>
<td width="13%" class="altbg2 report_class">185376</td>
<td width="13%" class="altbg1 report_class">3458.53</td>
<td width="13%" class="altbg2 report_class">186346</td>
<td width="13%" class="altbg1 report_class ">-4428</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">487</td>
<td width="13%" class="reportNow_z report_class">21398</td>
<td width="13%" class="reportNow_z report_class">318.65</td>
<td width="13%" class="reportNow_z report_class">28783</td>
<td width="13%" class="reportNow_z report_class ">-7704</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">263</td>
<td width="13%" class="reportNow_z report_class">12801</td>
<td width="13%" class="reportNow_z report_class">340.48</td>
<td width="13%" class="reportNow_z report_class">9000</td>
<td width="13%" class="reportNow_z report_class report_1">3461</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">2886</td>
<td width="13%" class="reportNow_z report_class">48815</td>
<td width="13%" class="reportNow_z report_class">1860.73</td>
<td width="13%" class="reportNow_z report_class">54764</td>
<td width="13%" class="reportNow_z report_class ">-7810</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">320</td>
<td width="13%" class="reportNow_z report_class">14612</td>
<td width="13%" class="reportNow_z report_class">99.22</td>
<td width="13%" class="reportNow_z report_class">23571</td>
<td width="13%" class="reportNow_z report_class ">-9059</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">566</td>
<td width="13%" class="reportNow_z report_class">56210</td>
<td width="13%" class="reportNow_z report_class">580.97</td>
<td width="13%" class="reportNow_z report_class">68917</td>
<td width="13%" class="reportNow_z report_class ">-13288</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">331</td>
<td width="13%" class="reportNow_z report_class">31540</td>
<td width="13%" class="reportNow_z report_class">258.49</td>
<td width="13%" class="reportNow_z report_class">1312</td>
<td width="13%" class="reportNow_z report_class report_1">29971</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">2179</td>
<td width="13%" class="altbg2 report_class">18237.6</td>
<td width="13%" class="altbg1 report_class">697.19</td>
<td width="13%" class="altbg2 report_class">3461</td>
<td width="13%" class="altbg1 report_class report_1">14080</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">605</td>
<td width="13%" class="reportNow_z report_class">1922</td>
<td width="13%" class="reportNow_z report_class">104.88</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">1818</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">459</td>
<td width="13%" class="reportNow_z report_class">2173.2</td>
<td width="13%" class="reportNow_z report_class">131.99</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">2042</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">547</td>
<td width="13%" class="reportNow_z report_class">12257.4</td>
<td width="13%" class="reportNow_z report_class">351.03</td>
<td width="13%" class="reportNow_z report_class">911</td>
<td width="13%" class="reportNow_z report_class report_1">10996</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">568</td>
<td width="13%" class="reportNow_z report_class">1885</td>
<td width="13%" class="reportNow_z report_class">109.3</td>
<td width="13%" class="reportNow_z report_class">2550</td>
<td width="13%" class="reportNow_z report_class ">-775</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">12877</td>
<td width="13%" class="altbg2 report_class">20426.2</td>
<td width="13%" class="altbg1 report_class">696.22</td>
<td width="13%" class="altbg2 report_class">3352</td>
<td width="13%" class="altbg1 report_class report_1">16378</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class ">1</td>
<td width="13%" class="altbg2 report_class">50</td>
<td width="13%" class="altbg1 report_class">5.25</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class report_1">45</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;&amp;s_issueno=15118" title="">10-09(15118)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_115118');"><img id="menuimg_showclass_115118" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">28658</td>
<td class="altbg2 report_class">175972.8</td>
<td class="altbg1 report_class">5684.19</td>
<td class="altbg2 report_class">115712</td>
<td class="altbg1 report_class report_1">54578</td></tr>
<tr style="display:none;" id="menu_showclass_115118"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">3707</td>
<td width="13%" class="altbg2 report_class">131730</td>
<td width="13%" class="altbg1 report_class">3803.01</td>
<td width="13%" class="altbg2 report_class">95635</td>
<td width="13%" class="altbg1 report_class report_1">32293</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">150</td>
<td width="13%" class="reportNow_z report_class">21936</td>
<td width="13%" class="reportNow_z report_class">688.1</td>
<td width="13%" class="reportNow_z report_class">1656</td>
<td width="13%" class="reportNow_z report_class report_1">19592</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">229</td>
<td width="13%" class="reportNow_z report_class">8068</td>
<td width="13%" class="reportNow_z report_class">152.78</td>
<td width="13%" class="reportNow_z report_class">4640</td>
<td width="13%" class="reportNow_z report_class report_1">3276</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">2798</td>
<td width="13%" class="reportNow_z report_class">87915</td>
<td width="13%" class="reportNow_z report_class">2485.7</td>
<td width="13%" class="reportNow_z report_class">87324</td>
<td width="13%" class="reportNow_z report_class ">-1895</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">84</td>
<td width="13%" class="reportNow_z report_class">468</td>
<td width="13%" class="reportNow_z report_class">14.47</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">454</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">243</td>
<td width="13%" class="reportNow_z report_class">5610</td>
<td width="13%" class="reportNow_z report_class">171.75</td>
<td width="13%" class="reportNow_z report_class">1553</td>
<td width="13%" class="reportNow_z report_class report_1">3886</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">203</td>
<td width="13%" class="reportNow_z report_class">7733</td>
<td width="13%" class="reportNow_z report_class">290.21</td>
<td width="13%" class="reportNow_z report_class">463</td>
<td width="13%" class="reportNow_z report_class report_1">6981</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">2291</td>
<td width="13%" class="altbg2 report_class">13382</td>
<td width="13%" class="altbg1 report_class">522.36</td>
<td width="13%" class="altbg2 report_class">8353</td>
<td width="13%" class="altbg1 report_class report_1">4507</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">832</td>
<td width="13%" class="reportNow_z report_class">4234</td>
<td width="13%" class="reportNow_z report_class">83.91</td>
<td width="13%" class="reportNow_z report_class">7503</td>
<td width="13%" class="reportNow_z report_class ">-3353</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">661</td>
<td width="13%" class="reportNow_z report_class">2432</td>
<td width="13%" class="reportNow_z report_class">164.43</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">2268</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">372</td>
<td width="13%" class="reportNow_z report_class">2767</td>
<td width="13%" class="reportNow_z report_class">133.24</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">2634</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">426</td>
<td width="13%" class="reportNow_z report_class">3949</td>
<td width="13%" class="reportNow_z report_class">140.77</td>
<td width="13%" class="reportNow_z report_class">850</td>
<td width="13%" class="reportNow_z report_class report_1">2959</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">22660</td>
<td width="13%" class="altbg2 report_class">30860.8</td>
<td width="13%" class="altbg1 report_class">1358.83</td>
<td width="13%" class="altbg2 report_class">11724</td>
<td width="13%" class="altbg1 report_class report_1">17778</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;&amp;s_issueno=15117" title="">10-06(15117)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_115117');"><img id="menuimg_showclass_115117" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">34413</td>
<td class="altbg2 report_class">949207.6</td>
<td class="altbg1 report_class">17318.23</td>
<td class="altbg2 report_class">1543696</td>
<td class="altbg1 report_class ">-611806</td></tr>
<tr style="display:none;" id="menu_showclass_115117"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">10181</td>
<td width="13%" class="altbg2 report_class">877069</td>
<td width="13%" class="altbg1 report_class">12221.45</td>
<td width="13%" class="altbg2 report_class">1308164</td>
<td width="13%" class="altbg1 report_class ">-443316</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">1041</td>
<td width="13%" class="reportNow_z report_class">180779</td>
<td width="13%" class="reportNow_z report_class">1674.04</td>
<td width="13%" class="reportNow_z report_class">273722</td>
<td width="13%" class="reportNow_z report_class ">-94617</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">983</td>
<td width="13%" class="reportNow_z report_class">145693</td>
<td width="13%" class="reportNow_z report_class">752.75</td>
<td width="13%" class="reportNow_z report_class">237498</td>
<td width="13%" class="reportNow_z report_class ">-92558</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">6804</td>
<td width="13%" class="reportNow_z report_class">503198</td>
<td width="13%" class="reportNow_z report_class">7750.06</td>
<td width="13%" class="reportNow_z report_class">785206</td>
<td width="13%" class="reportNow_z report_class ">-289758</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">147</td>
<td width="13%" class="reportNow_z report_class">3510</td>
<td width="13%" class="reportNow_z report_class">114.81</td>
<td width="13%" class="reportNow_z report_class">875</td>
<td width="13%" class="reportNow_z report_class report_1">2521</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">902</td>
<td width="13%" class="reportNow_z report_class">38363</td>
<td width="13%" class="reportNow_z report_class">1451.2</td>
<td width="13%" class="reportNow_z report_class">4244</td>
<td width="13%" class="reportNow_z report_class report_1">32669</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">304</td>
<td width="13%" class="reportNow_z report_class">5526</td>
<td width="13%" class="reportNow_z report_class">478.6</td>
<td width="13%" class="reportNow_z report_class">6620</td>
<td width="13%" class="reportNow_z report_class ">-1573</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">4965</td>
<td width="13%" class="altbg2 report_class">44555.8</td>
<td width="13%" class="altbg1 report_class">2873.57</td>
<td width="13%" class="altbg2 report_class">221937</td>
<td width="13%" class="altbg1 report_class ">-180255</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">1086</td>
<td width="13%" class="reportNow_z report_class">9631.7</td>
<td width="13%" class="reportNow_z report_class">759.19</td>
<td width="13%" class="reportNow_z report_class">1600</td>
<td width="13%" class="reportNow_z report_class report_1">7273</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">1121</td>
<td width="13%" class="reportNow_z report_class">8465.7</td>
<td width="13%" class="reportNow_z report_class">559.85</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">7906</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">1537</td>
<td width="13%" class="reportNow_z report_class">19244.7</td>
<td width="13%" class="reportNow_z report_class">1366.14</td>
<td width="13%" class="reportNow_z report_class">27150</td>
<td width="13%" class="reportNow_z report_class ">-9272</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">1221</td>
<td width="13%" class="reportNow_z report_class">7213.7</td>
<td width="13%" class="reportNow_z report_class">188.38</td>
<td width="13%" class="reportNow_z report_class">193187</td>
<td width="13%" class="reportNow_z report_class ">-186162</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">19267</td>
<td width="13%" class="altbg2 report_class">27582.8</td>
<td width="13%" class="altbg1 report_class">2223.21</td>
<td width="13%" class="altbg2 report_class">13595</td>
<td width="13%" class="altbg1 report_class report_1">11765</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;&amp;s_issueno=15116" title="">10-04(15116)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_115116');"><img id="menuimg_showclass_115116" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">12410</td>
<td class="altbg2 report_class">334390.3</td>
<td class="altbg1 report_class">11608.24</td>
<td class="altbg2 report_class">133626</td>
<td class="altbg1 report_class report_1">189157</td></tr>
<tr style="display:none;" id="menu_showclass_115116"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">3946</td>
<td width="13%" class="altbg2 report_class">294716</td>
<td width="13%" class="altbg1 report_class">9620.56</td>
<td width="13%" class="altbg2 report_class">94993</td>
<td width="13%" class="altbg1 report_class report_1">190103</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">347</td>
<td width="13%" class="reportNow_z report_class">15323</td>
<td width="13%" class="reportNow_z report_class">744.79</td>
<td width="13%" class="reportNow_z report_class">4043</td>
<td width="13%" class="reportNow_z report_class report_1">10536</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">279</td>
<td width="13%" class="reportNow_z report_class">20260</td>
<td width="13%" class="reportNow_z report_class">935.3</td>
<td width="13%" class="reportNow_z report_class">5100</td>
<td width="13%" class="reportNow_z report_class report_1">14225</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">2569</td>
<td width="13%" class="reportNow_z report_class">190853</td>
<td width="13%" class="reportNow_z report_class">5317.64</td>
<td width="13%" class="reportNow_z report_class">41392</td>
<td width="13%" class="reportNow_z report_class report_1">144144</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">134</td>
<td width="13%" class="reportNow_z report_class">3563</td>
<td width="13%" class="reportNow_z report_class">192.75</td>
<td width="13%" class="reportNow_z report_class">919</td>
<td width="13%" class="reportNow_z report_class report_1">2452</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">574</td>
<td width="13%" class="reportNow_z report_class">62630</td>
<td width="13%" class="reportNow_z report_class">2347.35</td>
<td width="13%" class="reportNow_z report_class">43540</td>
<td width="13%" class="reportNow_z report_class report_1">16744</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">43</td>
<td width="13%" class="reportNow_z report_class">2087</td>
<td width="13%" class="reportNow_z report_class">82.74</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">2005</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">3465</td>
<td width="13%" class="altbg2 report_class">28001</td>
<td width="13%" class="altbg1 report_class">1235.21</td>
<td width="13%" class="altbg2 report_class">37513</td>
<td width="13%" class="altbg1 report_class ">-10748</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">1230</td>
<td width="13%" class="reportNow_z report_class">10180</td>
<td width="13%" class="reportNow_z report_class">557.64</td>
<td width="13%" class="reportNow_z report_class">17200</td>
<td width="13%" class="reportNow_z report_class ">-7578</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">736</td>
<td width="13%" class="reportNow_z report_class">2784</td>
<td width="13%" class="reportNow_z report_class">208.73</td>
<td width="13%" class="reportNow_z report_class">1713</td>
<td width="13%" class="reportNow_z report_class report_1">863</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">505</td>
<td width="13%" class="reportNow_z report_class">4214</td>
<td width="13%" class="reportNow_z report_class">277.7</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">3937</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">994</td>
<td width="13%" class="reportNow_z report_class">10823</td>
<td width="13%" class="reportNow_z report_class">191.14</td>
<td width="13%" class="reportNow_z report_class">18600</td>
<td width="13%" class="reportNow_z report_class ">-7969</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">4999</td>
<td width="13%" class="altbg2 report_class">11673.3</td>
<td width="13%" class="altbg1 report_class">752.48</td>
<td width="13%" class="altbg2 report_class">1120</td>
<td width="13%" class="altbg1 report_class report_1">9801</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class ">0</td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;&amp;s_issueno=15115" title="">10-02(15115)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_115115');"><img id="menuimg_showclass_115115" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">6562</td>
<td class="altbg2 report_class">172621.4</td>
<td class="altbg1 report_class">5287.44</td>
<td class="altbg2 report_class">187382</td>
<td class="altbg1 report_class ">-20048</td></tr>
<tr style="display:none;" id="menu_showclass_115115"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">2193</td>
<td width="13%" class="altbg2 report_class">139608</td>
<td width="13%" class="altbg1 report_class">3925.31</td>
<td width="13%" class="altbg2 report_class">183152</td>
<td width="13%" class="altbg1 report_class ">-47469</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">86</td>
<td width="13%" class="reportNow_z report_class">4847</td>
<td width="13%" class="reportNow_z report_class">294.31</td>
<td width="13%" class="reportNow_z report_class">880</td>
<td width="13%" class="reportNow_z report_class report_1">3673</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">73</td>
<td width="13%" class="reportNow_z report_class">1400</td>
<td width="13%" class="reportNow_z report_class">103.4</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">1297</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">1429</td>
<td width="13%" class="reportNow_z report_class">82633</td>
<td width="13%" class="reportNow_z report_class">2775.37</td>
<td width="13%" class="reportNow_z report_class">90376</td>
<td width="13%" class="reportNow_z report_class ">-10519</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">122</td>
<td width="13%" class="reportNow_z report_class">4125</td>
<td width="13%" class="reportNow_z report_class">39.9</td>
<td width="13%" class="reportNow_z report_class">6671</td>
<td width="13%" class="reportNow_z report_class ">-2586</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">218</td>
<td width="13%" class="reportNow_z report_class">9237</td>
<td width="13%" class="reportNow_z report_class">284.22</td>
<td width="13%" class="reportNow_z report_class">4692</td>
<td width="13%" class="reportNow_z report_class report_1">4261</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">265</td>
<td width="13%" class="reportNow_z report_class">37366</td>
<td width="13%" class="reportNow_z report_class">428.12</td>
<td width="13%" class="reportNow_z report_class">80533</td>
<td width="13%" class="reportNow_z report_class ">-43595</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">2402</td>
<td width="13%" class="altbg2 report_class">26215</td>
<td width="13%" class="altbg1 report_class">872.98</td>
<td width="13%" class="altbg2 report_class">4230</td>
<td width="13%" class="altbg1 report_class report_1">21113</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">431</td>
<td width="13%" class="reportNow_z report_class">11082</td>
<td width="13%" class="reportNow_z report_class">147.06</td>
<td width="13%" class="reportNow_z report_class">850</td>
<td width="13%" class="reportNow_z report_class report_1">10085</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">315</td>
<td width="13%" class="reportNow_z report_class">2050</td>
<td width="13%" class="reportNow_z report_class">173.49</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">1877</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">438</td>
<td width="13%" class="reportNow_z report_class">4145</td>
<td width="13%" class="reportNow_z report_class">349.47</td>
<td width="13%" class="reportNow_z report_class">830</td>
<td width="13%" class="reportNow_z report_class report_1">2966</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">1218</td>
<td width="13%" class="reportNow_z report_class">8938</td>
<td width="13%" class="reportNow_z report_class">202.96</td>
<td width="13%" class="reportNow_z report_class">2550</td>
<td width="13%" class="reportNow_z report_class report_1">6186</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">1967</td>
<td width="13%" class="altbg2 report_class">6798.4</td>
<td width="13%" class="altbg1 report_class">489.14</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class report_1">6310</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;&amp;s_issueno=15114" title="">09-29(15114)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_115114');"><img id="menuimg_showclass_115114" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">9137</td>
<td class="altbg2 report_class">174510.6</td>
<td class="altbg1 report_class">3939.66</td>
<td class="altbg2 report_class">299535</td>
<td class="altbg1 report_class ">-128964</td></tr>
<tr style="display:none;" id="menu_showclass_115114"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二定位</td>
<td width="13%" class="altbg1 report_class ">3357</td>
<td width="13%" class="altbg2 report_class">118018</td>
<td width="13%" class="altbg1 report_class">2801.27</td>
<td width="13%" class="altbg2 report_class">146412</td>
<td width="13%" class="altbg1 report_class ">-31195</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口XX</td>
<td width="13%" class="reportNow_z report_class ">59</td>
<td width="13%" class="reportNow_z report_class">16718</td>
<td width="13%" class="reportNow_z report_class">151.72</td>
<td width="13%" class="reportNow_z report_class">91300</td>
<td width="13%" class="reportNow_z report_class ">-74734</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口X</td>
<td width="13%" class="reportNow_z report_class ">157</td>
<td width="13%" class="reportNow_z report_class">6119</td>
<td width="13%" class="reportNow_z report_class">300.06</td>
<td width="13%" class="reportNow_z report_class">18100</td>
<td width="13%" class="reportNow_z report_class ">-12282</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口XX口</td>
<td width="13%" class="reportNow_z report_class ">2143</td>
<td width="13%" class="reportNow_z report_class">54650</td>
<td width="13%" class="reportNow_z report_class">1483.32</td>
<td width="13%" class="reportNow_z report_class">32266</td>
<td width="13%" class="reportNow_z report_class report_1">20902</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口X口</td>
<td width="13%" class="reportNow_z report_class ">426</td>
<td width="13%" class="reportNow_z report_class">24494</td>
<td width="13%" class="reportNow_z report_class">657.86</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">23837</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口X</td>
<td width="13%" class="reportNow_z report_class ">213</td>
<td width="13%" class="reportNow_z report_class">3642</td>
<td width="13%" class="reportNow_z report_class">77.57</td>
<td width="13%" class="reportNow_z report_class">2850</td>
<td width="13%" class="reportNow_z report_class report_1">715</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">XX口口</td>
<td width="13%" class="reportNow_z report_class ">359</td>
<td width="13%" class="reportNow_z report_class">12395</td>
<td width="13%" class="reportNow_z report_class">130.75</td>
<td width="13%" class="reportNow_z report_class">1896</td>
<td width="13%" class="reportNow_z report_class report_1">10369</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三定位</td>
<td width="13%" class="altbg1 report_class ">3044</td>
<td width="13%" class="altbg2 report_class">52565</td>
<td width="13%" class="altbg1 report_class">913.83</td>
<td width="13%" class="altbg2 report_class">153123</td>
<td width="13%" class="altbg1 report_class ">-101472</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口口X</td>
<td width="13%" class="reportNow_z report_class ">1410</td>
<td width="13%" class="reportNow_z report_class">39023</td>
<td width="13%" class="reportNow_z report_class">175.78</td>
<td width="13%" class="reportNow_z report_class">135620</td>
<td width="13%" class="reportNow_z report_class ">-96773</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口口X口</td>
<td width="13%" class="reportNow_z report_class ">530</td>
<td width="13%" class="reportNow_z report_class">4875</td>
<td width="13%" class="reportNow_z report_class">228.11</td>
<td width="13%" class="reportNow_z report_class">9053</td>
<td width="13%" class="reportNow_z report_class ">-4407</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">口X口口</td>
<td width="13%" class="reportNow_z report_class ">806</td>
<td width="13%" class="reportNow_z report_class">4684</td>
<td width="13%" class="reportNow_z report_class">380.42</td>
<td width="13%" class="reportNow_z report_class">8450</td>
<td width="13%" class="reportNow_z report_class ">-4147</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="reportNow_z">X口口口</td>
<td width="13%" class="reportNow_z report_class ">298</td>
<td width="13%" class="reportNow_z report_class">3983</td>
<td width="13%" class="reportNow_z report_class">129.52</td>
<td width="13%" class="reportNow_z report_class">--</td>
<td width="13%" class="reportNow_z report_class report_1">3854</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四定位</td>
<td width="13%" class="altbg1 report_class ">2736</td>
<td width="13%" class="altbg2 report_class">3927.6</td>
<td width="13%" class="altbg1 report_class">224.56</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class report_1">3704</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">二字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">三字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="14%" class="altbg1"><font color="red"></font></td>
<td width="14%" class="altbg2">四字现</td>
<td width="13%" class="altbg1 report_class "></td>
<td width="13%" class="altbg2 report_class">0</td>
<td width="13%" class="altbg1 report_class">--</td>
<td width="13%" class="altbg2 report_class">--</td>
<td width="13%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr></tbody></table>
	<br>
</td></tr></tbody></table>
<br><br><div class="footer Noprint"><hr size="0" noshade="" color="BORDERCOLOR" width="80%">
<b></b> V2.0 &nbsp;©  <b>
</b><span class="smalltxt"></span>
usetime:0.517518, 
mysqlquery:34
</div>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>