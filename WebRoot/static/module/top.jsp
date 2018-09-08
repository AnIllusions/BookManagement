<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="关键词1,关键词2，关键词3,关键词4,……" />
<meta name="Description" content="你网页的简述" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<meta name="Author" content="第五只鼠，email" />
<meta name="Copyright" content="本页版权归第五只鼠所有。All Rights Reserved" />
<style type="text/css">
<!--
/* CSS Document */
*{
	margin: 0px;
	padding: 0px;
	border: 0px;
}
img{
	display:block;
}
body {
	background-color: #FFF;
	background-image: url(../images/topBg.gif);
	background-repeat: repeat;
	background-position: left top;
}
a {
	font-family: "宋体";
	font-size: 12px;
	color: #000000;
	text-decoration: none;
}
a:hover {
	font-family: "宋体";
	font-size: 12px;
	color: #000000;
	text-decoration: none;
}
#top {
	margin-top: 10px;
	width: 1024px;
	background-image: url(../images/menuBg.gif);
	background-repeat: no-repeat;
	background-position:top right;
}
#logo {
	float: left;
	height: 79px;
	width: 392px;
}
#menu {
	float: left;
	width: 632px;
	background-image: url(../images/menuBg.gif);
	background-repeat: no-repeat;
	background-position:top right;
}
#menu ul {
	list-style-type: none;
}
#menu li {
	height: 79px;
	float: left;
}
#menu a {
	float: left;
	margin: 0px;
	padding: 0px;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
}
#text {
	background-image: url(../images/textBg.gif);
	background-repeat: repeat-x;
	background-position: 0px 0px;
	height: 25px;
	width: 100%;
	float: left;
}
#text .left {
	height: 25px;
	width: 4px;
	float: left;
	background-image: url(../images/textLeft.gif);
	background-repeat: no-repeat;
	background-position: 0px 0px;
}
#text .info {
	font-family: Arial, Helvetica, sans-serif, "宋体";
	font-size: 12px;
	color: #000000;
	line-height: 25px;
	margin-left: 220px;
}
#text .right {
	background-image: url(../images/textRight.gif);
	background-repeat: no-repeat;
	background-position: 0px 0px;
	height: 25px;
	width: 4px;
	float: right;
}
#text .showhide {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	border: 0px;
	float: left;
	width: 69px;
	height: 25px;
}
#hideleft a {
	background-image: url(../images/hideleft.gif);
	background-repeat: no-repeat;
	height: 14px;
	width: 69px;
	display: block;
	float: left;
	margin-top: 5px;
	margin-left: 4px;
}
#showleft a {
	background-image: url(../images/showleft.gif);
	background-repeat: no-repeat;
	height: 14px;
	width: 69px;
	display: block;
	float: left;
	margin-top: 5px;
	margin-left: 4px;
}
#copyright {
}
-->
</style>
<title>头部</title>
<script language="javascript">
function showhidden()
{
	if (document.all.hideleft.style.display=="none")
	{
		document.all.hideleft.style.display="block";
		document.all.showleft.style.display="none";
	}
	else
	{
		document.all.hideleft.style.display="none";
		document.all.showleft.style.display="block";
	}
}
</script>
<script type="text/JavaScript">
<!--
function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}
//-->
</script>
</head>
<body>
<div id="top">
    <div id="logo"><img src="../images/logo.gif" width="392" height="79" border="0" align="absmiddle" /> </div>
    <div id="menu">
	<table width="70%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><a href="./main.jsp" target="mainFrame"><img src="../images/menu_1.jpg" width="68" height="79" /></a></td>
	<td><img src="../images/line.jpg" width="2" height="79" /></td>
	  <td><a target="leftFrame" href="./person/person_left.jsp"><img src="../images/menu_2.jpg" /></a></td>
	<td><img src="../images/line.jpg" width="2" height="79" /></td>
    <td><a target="leftFrame" href="./storage/storage_left.jsp"><img src="../images/menu_3.jpg" /></a></td>
	<td><img src="../images/line.jpg" width="2" height="79" /></td>
    <td><a target="leftFrame" href="./student/student_left.jsp"><img src="../images/menu_8.jpg"/></a></td>
	<td><img src="../images/line.jpg" width="2" height="79" /></td>
    <td><a target="leftFrame" href="./book/book_left.jsp"><img src="../images/menu_4.jpg"/></a></td>
	<td><img src="../images/line.jpg" width="2" height="79" /></td>
	<td><a target="leftFrame" href="./system/system_left.jsp"><img src="../images/menu_5.jpg"/></a></td>
	<td><img src="../images/line.jpg" width="2" height="79" /></td>
    <td><a  href="#" onClick="window.close()"><img src="../images/menu_9.jpg" width="72" height="79" /></a></td>
  </tr>
</table>

   </div>
</div>
<div id="text">
    <div class="left"></div>
	<ul class="showhide">
		<li id="hideleft" onclick="top.C_lefthidden();showhidden();" style="display:blcok"><a href="#"></a></li>
		<li id="showleft" onclick="top.C_leftshow();showhidden();" style="display:none"><a href="#"></a></li>
	</ul>
	<div class="info"></div>
    <div class="right"></div>
</div>
</body>
</html>
