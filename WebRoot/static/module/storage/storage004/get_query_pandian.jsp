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
<title>教材管理系统</title>
<link href="<%=path%>/static/css/css.css" rel="stylesheet" type="text/css" />

</head>

<body>
<h3 id="subTitle">盘点管理－盘点记录</h3>
<ul id="button">
	<li><a href="/Book_System/static/module/storage/storage004/pandian_query.jsp">返回</a></li>
</ul>

<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    
    
    <tr>
        <td width="10%" align="center" class="title2">管理员</td>
		<td width="10%" align="center" class="title2">时间</td>
		<td width="10%" align="center" class="title2">动作</td>
		<td width="10%" align="center" class="title2">教材</td>
		<td width="10%" align="center" class="title2">数量</td>
		<td width="10%" align="center" class="title2">原因</td>
    </tr>
    <%int n=Integer.parseInt(request.getAttribute("n").toString());
    for(int i=0;i<n;i++){ %>
   <tr>
        <td><%=request.getAttribute("gly1"+i) %></td>
        <td><%=request.getAttribute("sj1"+i) %></td>
        <td><%=request.getAttribute("dz1"+i) %></td>
        <td><%=request.getAttribute("jc1"+i) %></td>
        <td><%=request.getAttribute("sl1"+i) %></td>
        <td>未知</td>
   </tr>
   <%} %>
</table>
</body>
</html>