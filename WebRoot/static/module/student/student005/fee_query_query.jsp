<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ambow.model.BJi"%>
<%@page import="com.ambow.model.Major"%>
<%@page import="com.ambow.model.Level"%>
<%@page import="com.ambow.utils.HibernateUtil"%>
<%@page import="com.ambow.model.Category"%>
<%@ page import="org.hibernate.Session"%>
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
<link href="<%=path %>/static/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">书费查询-查询学生</h3>
	<ul id="button">
		<li><a href="../../main.jsp">返回</a></li>
	</ul>
	<form action="<%=path %>/BookFeeServlet?status=queryStudent2" method="post" name="form1" id="form1">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr align="left" class="within2bg">
				<td colspan="2" class="no_note"><input type="radio"
					name="radio" value="学号查询" checked="true" />按学号查询：</td>
			</tr>
			<tr>
				<td width="9%" align="right" nowrap="nowrap">输入学号：</td>
				<td width="91%" align="left" nowrap="nowrap"><input
					name="number" type="text" class="input2" /></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr align="left" class="within2bg">
				<td colspan="3" class="no_note"><input type="radio"
					name="radio" value="选择查询" />选择查询：</td>
			</tr>
			<tr>
				<td align="right" width="12%" class="title2">选择类别：</td>
				<td colspan="3" class="within2bg"><select name="categoryName">
						<option selected="selected">请选择类别</option>
						<%
							Session ses = HibernateUtil.getSession();
							List<Category> cList = ses.createQuery("from Category").list();
							HibernateUtil.clossSession();
							for (int k = 0; k < cList.size(); k++) {
						%>
						<option value="<%=cList.get(k).getName()%>"><%=cList.get(k).getName()%></option>
						<%
							}
						%>
				</select></td>
			</tr>
			<tr>
				<td width="12%" align="right" class="title2">选择层次：</td>
				<td width="88%" colspan="3" class="within2bg"><select
					name="levelName">
						<option selected="selected">请选择层次</option>
						<%
							ses = HibernateUtil.getSession();
							List<Level> lList = ses.createQuery("from Level").list();
							HibernateUtil.clossSession();
							for (int k = 0; k < lList.size(); k++) {
						%>
						<option value="<%=lList.get(k).getName()%>"><%=lList.get(k).getName()%></option>
						<%
							}
						%>
				</select></td>
			</tr>
			<tr>
				<td align="right" class="title2">选择专业：</td>
				<td colspan="3" class="within2bg"><select name="majorName">
						<option selected="selected">请选择专业</option>
						<%
							ses = HibernateUtil.getSession();
							List<Major> mList = ses.createQuery("from Major").list();
							HibernateUtil.clossSession();
							for (int k = 0; k < mList.size(); k++) {
						%>
						<option value="<%=mList.get(k).getName()%>"><%=mList.get(k).getName()%></option>
						<%
							}
						%>
				</select></td>
			</tr>
			<tr>
				<td align="right" class="title2">选择年级：</td>
				<td colspan="3" class="within2bg"><select name="gradeName">
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
				<td colspan="3" class="within2bg"><select name="className">
						<option selected="selected">请选择班级</option>
					<%
							ses = HibernateUtil.getSession();
							List<BJi> bList = ses.createQuery("from BJi").list();
							HibernateUtil.clossSession();
							for (int k = 0; k < bList.size(); k++) {
						%>
						<option value="<%=bList.get(k).getName()%>"><%=bList.get(k).getName()%></option>
						<%
							}
						%>
				</select></td>
			</tr>

		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr>
				<td align="center" colspan="3"><input type="submit"
					class="bevel" value="确定" /> <input name="Submit3" type="reset"
					class="bevel" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>