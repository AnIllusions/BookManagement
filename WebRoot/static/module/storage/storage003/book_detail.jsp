<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="com.ambow.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="关键词1,关键词2，关键词3,关键词4,……" />
<meta name="Description" content="你网页的简述" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<title>教材详情</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 id="subTitle">教材详情</h3>
<ul id="button">
	<li><a href="/Book_System/static/module/storage/storage003/stockpile.jsp">返　回</a></li>

</ul>

<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
    <form action="" method="post" name="form1" id="form1">
        <tr>
            <th width="20%" align="center" nowrap="nowrap" class="title2">ISBN</th>  
            <th width="25%" align="center" nowrap="nowrap" class="title2">教材名称</th>
            <th width="10%" align="center" nowrap="nowrap" class="title2">作者</th>
            <th width="20%" align="center" nowrap="nowrap" class="title2">出版社</th>
	        <th width="5%" align="center" nowrap="nowrap" class="title2">单价(元)</th>
            <th width="15%" align="center" nowrap="nowrap" class="title2">出版日期</th>
            <th width="5%" align="center" nowrap="nowrap" class="title2">版次</th>
        </tr>
        <tr class="within2bg">
          <td><%=request.getParameter("isbn")%></td>
          <td><%=request.getParameter("jcmc")%></td>
          <td><%=request.getParameter("zz")%></td>
          <td><%=request.getParameter("cbs")%></td>
          <td><%=request.getParameter("dj")%></td>
          <td><%=request.getParameter("cbrq")%></td>
          <td><%=request.getParameter("bc")%></td>
        </tr>
       
      
    </form>
</table>

</body>
</html>