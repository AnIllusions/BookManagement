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
<title>书费管理</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">书费管理-查询学生</h3>
	<ul id="button">
		<li><a href="../../main.jsp">返回</a></li>
	</ul>
	<form action="fee.jsp" method="post" name="form1" id="form1">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr align="left" class="within2bg">
				<td colspan="2" class="no_note"><input type="radio"
					name="radio" value="radio" checked="true" />按学号查询：</td>
			</tr>
			<tr>
				<td width="9%" align="right" nowrap="nowrap">输入学号：</td>
				<td width="91%" align="left" nowrap="nowrap"><input
					name="textfield" type="text" class="input2" /></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr align="left" class="within2bg">
				<td colspan="3" class="no_note"><input type="radio"
					name="radio" value="radio" />选择查询：</td>
			</tr>
			<tr>
				<td align="right" width="12%" class="title2">选择类别：</td>
				<td colspan="3" class="within2bg"><select name="select">
						<option selected="selected">请选择类别</option>
						<option>函授</option>
						<option>全日制</option>
						<option>夜大</option>
				</select>
			</tr>
			<tr>
				<td width="12%" align="right" class="title2">选择层次：</td>
				<td width="88%" colspan="3" class="within2bg"><select
					name="select">
						<option selected="selected">请选择层次</option>
						<option>本科</option>
						<option>专科</option>
						<option>专升本</option>
				</select>
			</tr>
			<tr>
				<td align="right" class="title2">选择专业：</td>
				<td colspan="3" class="within2bg"><select name="select">
						<option selected="selected">请选择专业</option>
						<option>电气工程与自动化</option>
						<option>电子信息工程</option>
						<option>通信工程</option>
						<option>计算机科学与技术</option>
						<option>信息管理与信息计算</option>
				</select>
			</tr>
			<tr>
				<td align="right" class="title2">选择年级：</td>
				<td colspan="3" class="within2bg"><select name="select2">
						<option selected="selected">请选择年级</option>
						<option>2004</option>
						<option>2005</option>
						<option>2006</option>
						<option>2007</option>
						<option>2008</option>
						<option>2009</option>
						<option>2010</option>
						<option>2011</option>
						<option>2012</option>
						<option>2013</option>
						<option>2014</option>
						<option>2015</option>
						<option>2016</option>
						<option>2017</option>
						<option>2018</option>
						<option>2019</option>
						<option>2020</option>
				</select></td>
			</tr>
			<tr>
				<td align="right" class="title2">选择班级：</td>
				<td colspan="3" class="within2bg"><select name="select">
						<option selected="selected">请选择班级</option>
						<option>通信041</option>
						<option>通信042</option>
						<option>电信041</option>
						<option>电信042</option>
						<option>电信043</option>
				</select>
			</tr>

		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr>
				<td align="center" colspan="3"><input type="submit"
					class="bevel" value="确定" /> <a href="pay_fee_query_result.jsp">缴费</a>
					<a href="query_result.jsp">书费查询</a> <a
					href="fee_statistic_query_result.jsp">统计</a> <input name="Submit3"
					type="reset" class="bevel" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>