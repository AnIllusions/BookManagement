<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="关键词1,关键词2，关键词3,关键词4,……" />
<meta name="Description" content="你网页的简述" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<title>教师领书――教材查询</title>
<link href="<%=path %>/static/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 id="subTitle">选择教材</h3>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
		<tr>
			<td nowrap="nowrap">
			教材名称：<input name="name" type="text" class="input2" />
			&nbsp;&nbsp;作者：<input name="author" type="text" class="input2" size="10" maxlength="10" />
			&nbsp;&nbsp;出版社：<input name="publish" type="text" class="input2" />
		</tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
  <!--  <form action="teacher.jsp" method="post" name="form1" id="form1">-->
   <form action="/Book_System/static/module/storage/storage001/station/station2.jsp" method="post" name="form1" id="form1">
    <tr>
      <th width="10%" align="center" nowrap="nowrap" class="title2">选择</th>
      <th width="33%" align="center" nowrap="nowrap" class="title2">教材名称</th>
      <th width="12%" align="center" nowrap="nowrap" class="title2">版次</th>
      <th width="12%" align="center" nowrap="nowrap" class="title2">作者</th>
      <th width="31%" align="center" nowrap="nowrap" class="title2">出版社</th>
      <th width="14%" align="center" nowrap="nowrap" class="title2">单价</th>
    </tr>
   <%int ii=0; %>
      <c:forEach var="i" items="${list}">
       <tr class="within2bg">
      <td align="center"><input type="radio" name="radio" value="<%=ii %>" /></td>
      <td>${i.name }</td>	
       <td>${i.version }</td>	
        <td>${i.author }</td>	
         <td>${i.publish }</td>	
          <td>${i.price }</td>	
      </tr>		
      <%ii++; %>
      </c:forEach>
	<tr align="center" class="within2bg">
      <td colspan="8" class="no_note"><input name="" type="submit" value="确定" /></td>
    </tr>
  </form>
</table>
<table width="90%"  border="0" align="center" cellpadding="3" cellspacing="0" id="page">
    <tr>
        <td align="right">共有记录 2条 第 1/1页 <a href="#">首页</a> <a href="#">上一页</a> <a href="#">下一页</a> <a href="#">末页</a> 到
            <input name="textfield2" type="text" class="page_input" size="5" />
            页
            <input name="Submit6" type="submit" class="bevel" value="GO" /></td>
    </tr>
</table>
</body>
</html>