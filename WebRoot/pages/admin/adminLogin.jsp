<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath =
      request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>教材管理系统</title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}

input {
	border: 1px solid #4172B7;
	height: 18px;
}
-->
</style>
</head>

<body>
	<form action="<%=path%>/OperatorLoginServlet" method="post">
		<table width="640" height="377" border="0" align="center"
			cellpadding="0" cellspacing="0"
			background="<%=path%>/pages/static/images/login_bg.jpg"
			style="background-repeat:no-repeat;margin-top:80px;">
			<tr>
				<td align="right" valign="top">
					<table width="75%" border="0" cellspacing="0" cellpadding="0"
						style="margin-top:300px;">
						<tr>
							<td width="12%" align="center"><img
								src="<%=path%>/pages/static/images/user.jpg" width="50"
								height="16" /></td>
							<td width="26%" align="center"><input name="account"
								type="text" size="16" /></td>
							<td width="11%" align="center"><img
								src="<%=path%>/pages/static/images/password.jpg" width="50"
								height="16" /></td>
							<td width="26%" align="center"><input name="pwd" type="text"
								size="16" /></td>
							<td width="25%" align="left"><input type="submit" value="登录"></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>
