<%@page import="com.ambow.model.Category"%>
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
		<li><a href="/Book_System/static/module/student/student002/query_type.jsp">返回</a></li>
	</ul>
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table" style="margin-top: 10px;">
		<form action="" method="post" name="form1" id="form1">
		<td width="90" align="center" nowrap="nowrap">查询结果：</td>
			<tr>
				<th width="10%" align="center" nowrap="nowrap" class="title2">类别名称</th>
				<th width="35%" align="center" nowrap="nowrap" class="title2">备注</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">修改</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">删除</th>
			</tr>
			<%
				List<Category> cList = (List) request.getAttribute("cList");
				if (cList != null && !cList.isEmpty()) {
					for (int i = 0; i < cList.size(); i++) {
			%>
			<tr class="within2bg">
				<td align="center"><%=cList.get(i).getName()%></td>
				<td align="left"><%=cList.get(i).getRemark()%></td>
				<td align="center"><a
					href="static/module/student/student002/modify_type.jsp?id=<%=cList.get(i).getId()%>">修改</a></td>
				<td align="center"><a
					href="<%=path%>/CategoryServlet?status=delete&id=<%=cList.get(i).getId()%>">删除</a></td>
			</tr>
			<%
				}
				} else {
			%>
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note">没有符合条件的记录</td>
			</tr>
			<%  }%>
		</form>
	</table>
</body>
</html>