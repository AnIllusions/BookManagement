<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<title>学生领书―查询学生</title>
<link href="<%=path%>/static/css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE3 {font-size: 12px}
-->
</style>
</head>

<body>
<h3 id="subTitle">学生领书―查询学生</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
		<tr>
			<td width="11%" nowrap="nowrap">套书基本信息：</td>
			<td width="19%" nowrap="nowrap">名称</td>
			<td width="12%" nowrap="nowrap">类别</td>
			<td width="10%" nowrap="nowrap">层次</td>
			<td width="19%" nowrap="nowrap">专业</td>
			<td width="11%" nowrap="nowrap">年级</td>
			<td width="18%" nowrap="nowrap">班级</td>
		</tr>
		<tr><td><input type="radio"/></td>
		<td><%=request.getAttribute("mc0") %></td>
		<td><%=request.getAttribute("lb0") %></td>
		<td><%=request.getAttribute("cc0") %></td>
		<td><%=request.getAttribute("zy0") %></td>
		<td><%=request.getAttribute("nj0") %></td>
		<td><%=request.getAttribute("bj0") %></td>
		</tr>
</table>
<br>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  <td><span class="STYLE3">该套书所包含的教材如下：</span></td>
  </tr>
</table>
  
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
    <tr>
      <th width="31%" align="center" nowrap="nowrap" class="title2">教材名称</th>
      <th width="12%" align="center" nowrap="nowrap" class="title2">版次</th>
      <th width="12%" align="center" nowrap="nowrap" class="title2">作者</th>
      <th width="34%" align="center" nowrap="nowrap" class="title2">出版社</th>
      <th width="11%" align="center" nowrap="nowrap" class="title2">单价</th>
    </tr>
    <%int n=Integer.parseInt(request.getAttribute("n").toString()) ;
    for(int i=0;i<n;i++){%>
    <tr class="within2bg">
      <td><%=request.getAttribute("jcmc"+i) %></td>
      <td><%=request.getAttribute("bc"+i) %></td>
      <td><%=request.getAttribute("zz"+i) %></td>
      <td><%=request.getAttribute("cbs"+i) %></td>
      <td><%=request.getAttribute("dj"+i) %></td>
    </tr>
    <%} %>
    
</table>

<blockquote>
  <hr width="94%" class="xieyi" />
  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
  <td><span class="STYLE3">查询学生：</span></td>
  </tr>
</table>
<!-- <form name="" method="" action="fetch.jsp"> -->
<form   method="post" action="<%=path%>/StudentSerchServlet"> 
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
  <tr>
    <td width="15%" align="right" class="title2">班级：</td>
    <td width="85%" class="within2bg">&nbsp;
	<select name="banji">
	<option>1班</option>
	<option>2班</option>
	<option>3班</option>
	</select></td>
  </tr>
  <tr>
    <td align="right" class="title2">学号：</td>
    <td colspan="3" class="within2bg">&nbsp;
        <input name="xuehao" type="text" size="6" maxlength="6" class="input2" /></td>
  </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
  <tr>
    <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
      &nbsp;&nbsp;
      <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
  </tr>
</table>
</form>
</body>
</html>