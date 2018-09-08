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
<title>查询结果</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">查询结果</h3>
	<ul id="button">
		<li><a href="query_result.jsp">返 回</a></li>
	</ul>
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table2">
		<tr align="center" class="within2bg">
			<td colspan="7" class="no_note"><h6>
					查询结果:
					<h6></td>
		</tr>
	</table>
	<form action="" method="post" name="form1" id="form1">

		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table" style="margin-top: 10px;">
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note">班级成员列表:</td>
			</tr>
			<tr>
				<th width="20%" align="center" nowrap="nowrap" class="title2">学号</th>
				<th width="20%" align="center" nowrap="nowrap" class="title2">姓名</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">性别</th>
				<th width="20%" align="center" nowrap="nowrap" class="title2">察看详情</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">修改</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">删除</th>
			</tr>
			<tr class="within2bg">
				<td align="center">2004081268</td>
				<td align="center">刘德华</td>
				<td align="center">男</td>
				<td align="center"><a href="query_result_page2.jsp">察看详情</a></td>
				<td align="center"><a href="query_result_page2.jsp">修改</a></td>
				<td align="center"><a href="query_result_page2.jsp">删除</a></td>
			</tr>
			<tr class="within2bg">
				<td align="center">2004081269</td>
				<td align="center">李嘉欣</td>
				<td align="center">女</td>
				<td align="center"><a href="query_result_page2.jsp">察看详情</a></td>
				<td align="center"><a href="query_result_page2.jsp">修改</a></td>
				<td align="center"><a href="query_result_page2.jsp">删除</a></td>
			</tr>
			<tr class="within2bg">
				<td align="center">2004081270</td>
				<td align="center">林志玲</td>
				<td align="center">女</td>
				<td align="center"><a href="query_result_page2.jsp">察看详情</a></td>
				<td align="center"><a href="query_result_page2.jsp">修改</a></td>
				<td align="center"><a href="query_result_page2.jsp">删除</a></td>
			</tr>
			<tr class="within2bg">
				<td align="center">2004081271</td>
				<td align="center">周杰伦</td>
				<td align="center">男</td>
				<td align="center"><a href="query_result_page2.jsp">察看详情</a></td>
				<td align="center"><a href="query_result_page2.jsp">修改</a></td>
				<td align="center"><a href="query_result_page2.jsp">删除</a></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="3"
			cellspacing="0" id="page">
			<tr>
				<td align="right">共有记录 2条 第 1/1页 <a href="query_result.jsp">首页</a>
					<a href="query_result.jsp">上一页</a> <a href="query_result_page2.jsp">下一页</a>
					<a href="query_result_page2.jsp">末页</a></td>
			</tr>
		</table>
	</form>
</body>
</html>