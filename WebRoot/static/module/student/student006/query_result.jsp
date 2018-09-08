<%@page import="com.ambow.model.Level"%>
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
<link href="<%=path %>/static/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">查询结果</h3>
	<ul id="button">
	    <li><a href="/Book_System/static/module/student/student006/query_level.jsp">返回</a></li>
    </ul><br>
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table" style="margin-top: 10px;">
		<form action="" method="post" name="form1" id="form1">
		<tr width="90" align="center" nowrap="nowrap">查询结果：</tr>
			<tr>
				<th width="10%" align="center" nowrap="nowrap" class="title2">层次名称</th>
				<th width="35%" align="center" nowrap="nowrap" class="title2">备注</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">修改</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">删除</th>
			</tr>
			<%
				List<Level> levels = (List) request.getAttribute("levels");
				if (levels != null && !levels.isEmpty()) {
					for (int i = 0; i < levels.size(); i++) {
			%>
			<tr class="within2bg">
				<td align="center"><%=levels.get(i).getName() %></td>
				<td align="left"><%=levels.get(i).getRemark() %></td>
				<td align="center"><a href="static/module/student/student006/modify_level.jsp?id=<%=levels.get(i).getId()%>">修改</a></td>
				<td align="center"><a href="<%=path%>/LevelServlet?status=delete&id=<%=levels.get(i).getId()%>">删除</a></td>
			</tr>
			<%
				}
				} else {
			%>
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note">没有符合条件的记录</td>
			</tr>
			<%
				}
			%>
		</form>
	</table>
</body>
</html>