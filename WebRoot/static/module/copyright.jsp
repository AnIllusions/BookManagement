<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Robots" content="All" />

<title>æ æ é¢ææ¡£</title>
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
	background-image: url(../images/copyrightBg.gif);
	background-repeat: repeat-x;
	background-position: 0px 0px;
}
a:link {
}
a:visited {
}
a:hover {
}
a:active {
}
#copyright {
	height: 26px;
	width: 100%;
	background-image: url(../images/copyrightBg.gif);
	background-repeat: repeat-x;
	background-position: 0px 0px;
}
#copyright .left {
	background-image: url(../images/copyrightLeft.gif);
	height: 25px;
	width: 4px;
	background-repeat: no-repeat;
	background-position: 0px 0px;
	float: left;
}
#copyright .right {
	background-image: url(../images/copyrightRight.gif);
	background-repeat: no-repeat;
	background-position: 0px 0px;
	height: 26px;
	width: 11px;
	float: right;
}
-->
</style>
</head>

<body>
<div id="copyright">
	<div class="left"></div>
	<div></div>
	<div class="right"></div>
</div>
</body>
</html>