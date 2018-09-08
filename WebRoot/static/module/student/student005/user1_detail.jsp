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
<title>学生个人信息</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">学生个人信息</h3>
	<ul id="button">
		<li><a href="user1_infor.htm">返回</a></li>
	</ul>
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table">
		<tr>
			<th colspan="4" class="p4"><span class="title2"><h6>学生个人信息：</h6></span></th>
		</tr>
		<tr>
			<td width="20%" align="right" class="title2">学号：</td>
			<td width="80%" class="within2bg">2004081270</td>
		</tr>
		<tr>
			<td width="20%" align="right" class="title2">姓名：</td>
			<td width="80%" class="within2bg">滕景宝</td>
		</tr>
		<tr>
			<td width="20%" align="right" class="title2">性别：</td>
			<td width="80%" class="within2bg">男</td>
		</tr>
		<tr>
			<td width="20%" align="right" class="title2">出生日期：</td>
			<td width="80%" class="within2bg">19850925</td>
		</tr>
		<tr>
			<td width="20%" align="right" class="title2">籍贯：</td>
			<td width="80%" class="within2bg">山东郓城</td>
		</tr>
		<tr>
			<td width="20%" align="right" class="title2">家庭住址：</td>
			<td width="80%" class="within2bg">山东郓城</td>
		</tr>
		<tr>
			<td width="20%" align="right" class="title2">联系电话：</td>
			<td width="80%" class="within2bg">15964518983</td>
		</tr>
		<tr>
			<td width="20%" align="right" class="title2">所属类别：</td>
			<td width="80%" colspan="3" class="within2bg">全日制</td>
		</tr>
		<tr>
			<td align="right" class="title2">所属专业：</td>
			<td colspan="3" class="within2bg">通信工程</td>
		</tr>
		<tr>
			<td align="right" class="title2">所属班级：</td>
			<td colspan="3" class="within2bg">通信041</td>
		</tr>
		<tr>
			<td align="right" class="title2">备注：</td>
			<td colspan="3" class="within2bg">该学生是个好学生</td>
			</td>
		</tr>
	</table>
</body>
</html>