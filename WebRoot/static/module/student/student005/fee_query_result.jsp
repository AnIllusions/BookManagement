<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="关键词1,关键词2，关键词3,关键词4,……" />
<meta name="Description" content="你网页的简述" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<title>菜单管理</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">书费查询结果</h3>
	<ul id="button">
		<li><a href="fee_query.jsp">返回</a></li>
	</ul>

	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table" style="margin-top: 10px;">
		<form action="" method="post" name="form1" id="form1">
			<tr>
				<th width="15%" align="center" nowrap="nowrap" class="title2">姓名</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">学号</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">学年</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">学期</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">交费金额（元）</th>
			</tr>
			<tr class="within2bg">
				<td align="center">滕景宝</td>
				<td align="center">2004081270</td>
				<td align="center">2004-2005</td>
				<td align="center">上</td>
				<td align="center">200</td>
			</tr>
			<tr align="center" class="within2bg">
				<td colspan="4" class="no_note">合计</td>
				<td align="center">2200</td>
			</tr>
		</form>
	</table>
</body>
</html>