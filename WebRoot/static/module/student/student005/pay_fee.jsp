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
	<h3 id="subTitle">缴费</h3>
	<ul id="button">
		<li><a href="pay_fee_query_result.jsp">返回</a></li>
	</ul>
	<form action="<%=path%>/BookFeeServlet?status=pay" method="post">
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table2">
		<tr>
			<td align="center" class="title2">选择学年：</td>
			<td colspan="3" class="within2bg"><select name="year">
					<option selected="selected">请选择学年</option>
					<option>2004-2005</option>
					<option>2005-2006</option>
					<option>2006-2007</option>
					<option>2007-2008</option>
					<option>2008-2009</option>
					<option>2009-2010</option>
					<option>2010-2011</option>
					<option>2011-2012</option>
					<option>2012-2013</option>
					<option>2013-2014</option>
			</select></td>
		</tr>
		<tr>
			<td align="center" class="title2">选择学期：</td>
			<td colspan="3" class="within2bg"><select name="term">
					<option selected="selected">请选择学期</option>
					<option>上</option>
					<option>下</option>
			</select></td>
		</tr>
		<tr>
			<td width="20%" align="center" nowrap="nowrap">输入交费金额：</td>
			<td nowrap="nowrap"><input name="payment" type="text"
				class="input2" /> 
				<input type="hidden" name="student_id" value="<%=request.getParameter("id")%>"></input>
				<input name="Submit" type="submit"
				class="buttonInp" value="提交" /> <input name="Submit" type="submit"
				class="buttonInp" value="取消" /></td>
		</tr>

	</table>
	</form>
</body>
</html>