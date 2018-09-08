<%@page import="com.ambow.utils.HibernateUtil"%>
<%@page import="com.ambow.model.Category"%>
<%@page import="com.ambow.model.Level"%>
<%@page import="com.ambow.model.Major"%>
<%@page import="org.hibernate.Session"%>
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
<title>添加班级</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
<script>
	function yan(){
		if(frm.className.value == ""){
			alert("班级名称不能为空！");
			document.frm.className.focus();
			return (false);
		}else if(frm.remark.value == ""){
			alert("备注不能为空！");
			document.frm.remark.focus();
			return (false);
		}
	}
</script>
</head>

<body>
	<h3 id="subTitle">添加班级</h3>
	<ul id="button">
		<li><a href="../../main.jsp">返回</a></li>
	</ul><br />
	<form action="<%=path %>/BJiServlet?status=add" method="post" name="frm" id="form1" onsubmit="return yan()">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table">
			<tr>
				<th colspan="4" class="p4"><span class="title2"><h6>填写班级信息:</h6></span></th>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">班级名称：</td>
				<td width="80%" class="within2bg"><input name="className"
					type="text" class="input2" id="className"/></td>
			</tr>
			<tr>
				<td align="right" class="title2">年级：</td>
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
				<td width="20%" align="right" class="title2">所属类别：</td>
				<td width="80%" colspan="3" class="within2bg"><select
					name="categoryName">
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
				</select>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">所属层次：</td>
				<td width="80%" colspan="3" class="within2bg"><select
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
				</select>
			</tr>
			<tr>
				<td align="right" class="title2">所属专业：</td>
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
				</select>
			</tr>
			<tr>
				<td align="right" class="title2">备注：</td>
				<td colspan="3" class="within2bg"><textarea name="remark"
						cols="100" class="textarea3" id="remark"></textarea></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="yesno">
			<tr>
				<td align="center"><input name="Submit2" type="submit"
					class="bevel" value="确定" /> <input name="Submit3" type="reset"
					class="bevel" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>