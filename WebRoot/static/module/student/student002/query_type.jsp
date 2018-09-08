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
<title>查询类别</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">查询类别</h3>
	<ul id="button">
		<li><a href="../../main.jsp">返回</a></li>
	</ul>
	<form action="<%=path %>/CategoryServlet?status=query" method="post" name="form1" id="form1">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr>
				<td width="20%" align="center" nowrap="nowrap">输入类别名称：</td>
				<td nowrap="nowrap"><input name="categoryName" type="text"
					class="input2" /> <input name="Submit" type="submit"
					class="buttonInp" value="查 询" /></td>
			</tr>
		</table>
	</form>
</body>
</html>