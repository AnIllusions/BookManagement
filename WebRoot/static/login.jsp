<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>管理员登录</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
input{
	border:1px solid #4172B7;
	height:18px;
}
-->
</style></head>

<body>
<table width="640" height="377" border="0" align="center" cellpadding="0" cellspacing="0" background="images/login_bg.jpg" style="background-repeat:no-repeat;margin-top:80px;">
  <tr>
    <td align="right" valign="top"><table width="75%" border="0" cellspacing="0" cellpadding="0" style="margin-top:300px;">
      <form action="<%=path%>/OperatorLoginServlet">
      <tr>
        <td width="12%" align="center"><img src="images/user.jpg" width="50" height="16" /></td>
        <td width="26%" align="center"><input name="account" type="text" size="16" /></td>
        <td width="11%" align="center"><img src="images/password.jpg" width="50" height="16" /></td>
        <td width="26%" align="center"><input name="pwd" type="text" size="16" /></td>
     <!--    <td width="25%" align="left"><a href="index.jsp" ><img src="images/btn_login.jpg" width="89" height="31" hspace="3" /></a></td> -->
       <td width="25%" align="left"><input type="submit"    size="16" value="submit"/></td>
    </tr></form>
    </table></td>
  </tr>
</table>
</body>
</html>
