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
<title>其它领书</title>
<link href="../../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<%
System.out.println("进入了storage.station.jsp"); 
String radio=request.getParameter("radio");
List<TextBook> textbooks=(List<TextBook>)session.getAttribute("sTextBooks");
TextBook textbook=textbooks.get(Integer.parseInt(radio));
 %>
<h3 id="subTitle">函授站领书</h3>
<form name="" method="post" action="<%=path%>/GetbookServletStation">
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">

  <tr>
    <td colspan="3" class="p4">教材信息：<input name="textbookid" type="hidden" value="<%=textbook.getId()%>"/></td>
  </tr>
  <tr>
    <td width="25%" align="right" class="title2">架位：</td>
    <td width="12%" class="within2bg">&nbsp;
	<select name="">
	<option>1</option>
	<option>A33</option>
	<option>D2</option>
	</select></td>
    <td class="within2bg">可领数量：&nbsp;
      <input type="text" class="input2"  value="<%=textbook.getId()%>" size="6" maxlength="6" readonly="true"/></td>
    </tr>
  <tr>
    <td align="right" class="title2">领用数量：</td>
    <td colspan="2" class="within2bg">&nbsp;
        <input name="lysl" type="text" size="6" maxlength="6" class="input2" /></td>
  </tr>
  <tr>
   <td align="right" class="title2">函授站：</td>
    <td colspan="2" class="within2bg">&nbsp;
        <select name="hsz">
	<option>泰安函授站</option>
	<option>1</option>
	<option>2</option>
	</select></td> </tr>
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