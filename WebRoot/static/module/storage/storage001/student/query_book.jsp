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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="关键词1,关键词2，关键词3,关键词4,……" />
<meta name="Description" content="你网页的简述" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<title>学生领书――教材查询</title>
<link href="../../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">添加教材</h3>
	<ul id="button">
		<li><a
			href="/Book_System/static/module/storage/storage001/student/edit_package.jsp">返回</a></li>
	</ul>
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table" style="margin-top:10px;">
		<form action="<%=path%>/AddEditBookServlet" method="post">
		<tr>
			<td>教材名称</td>
			<td><input type="text" name="jcmc" /></td>
		</tr>
		<tr>
			<td>数量</td>
			<td><input type="text" name="sl" /></td>
		</tr>
		<tr>
			<td>作者</td>
			<td><input type="text" name="zz" /></td>
		</tr>
		<tr>
			<td>isbn</td>
			<td><input type="text" name="isbn" /></td>
		</tr>
		<tr>
			<td>单价</td>
			<td><input type="text" name="dj" /></td>
		</tr>
		<tr>
			<td>出版社</td>
			<td><input type="text" name="cbs" /></td>
		</tr>
		<tr>
			<td>备注</td>
			<td><input type="text" name="bz" value=""/></td>
		</tr>
		<tr>
			<td>版次</td>
			<td><input type="text" name="bc" /></td>
		</tr>
		<tr>
			<td>架位</td>
			<td><input type="text" name="jw" /></td>
		</tr>
		<tr>
			<td>供应商</td>
			<td><input type="text" name="gys" /></td>
		</tr>
		<tr align="center" class="within2bg">
			<td colspan="8" class="no_note"><input name="" type="submit"
				value="确定" /></td>
		</tr>
		</form>
	</table>
	<table width="90%" border="0" align="center" cellpadding="3"
		cellspacing="0" id="page">
		<tr>
			<td align="right">共有记录 2条 第 1/1页 <a href="#">首页</a> <a href="#">上一页</a>
				<a href="#">下一页</a> <a href="#">末页</a> 到 <input name="textfield2"
				type="text" class="page_input" size="5" /> 页 <input name="Submit6"
				type="submit" class="bevel" value="GO" /></td>
		</tr>
	</table>
</body>
</html>