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
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="关键词1,关键词2，关键词3,关键词4,……" />
<meta name="Description" content="你网页的简述" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<title>菜单管理</title>
<link href="${pageContext.request.contextPath}/static/css/css.css"
	rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {
	color: #FF0000
}
-->
</style>
</head>

<body>
	<h3 id="subTitle">修改用户信息</h3>

	<form name="form1" method="post" action="<%=path %>/ModifyAdminServlet">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table">
			
			<tr>
				<th colspan="4" align="center" class="title2">
				用户基本信息
				<input type="hidden" name ="id" value="<%=request.getParameter("id")%>" />
				</th>
			</tr>
			<tr>
				<td width="21%" align="right" class="title2">账号：<br></td>
				<td width="79%" class="within2bg">&nbsp; 
				<input name="account"
					type="text" class="input2"
					value="<%=request.getParameter("account")%>" readonly="readonly" />
					<span class="STYLE1"> </span></td>
			</tr>
			<tr>
				<td align="right" class="title2">姓名：</td>
				<td class="within2bg">&nbsp; <input name="name"
					type="text" value="<%=request.getParameter("name") %>" class="input2" /> <span class="STYLE1">* </span></td>
			</tr>
			<tr>
				<td align="right" class="title2">密码：</td>
				<td class="within2bg">&nbsp; 
				<input name="password"
					type="password" class="input2" value="<%=request.getParameter("password") %>" /> <span class="STYLE1">* </span></td>
			</tr>
			<tr>

				<td align="right" class="title2">确认密码：</td>
				<td class="within2bg">&nbsp; <input name="password2"
					type="password" class="input2" value="<%=request.getParameter("password") %>"/> <span class="STYLE1">* </span></td>
			</tr>
			<tr>
				<td align="right" class="title2">职位：</td>
				<td class="within2bg">&nbsp; <input name="position"
					type="text" class="input2" value="<%=request.getParameter("position") %>" /></td>
			</tr>
			<tr>
				<td align="right" class="title2">电话：</td>
				<td class="within2bg">&nbsp; <input name="tel"
					type="text" class="input2" value="<%=request.getParameter("tel") %>" /> <span class="STYLE1">* </span></td>
			</tr>
			<tr>
				<td align="right" class="title2">角色：</td>
				<td class="within2bg">&nbsp; <select name="role">
						<option value="库存管理员">库存管理员</option>
						<option value="学生管理员">学生管理员</option>
						<option value="超级管理员">教材管理员</option>
						<option value="分管领导">分管领导</option>
				</select> <span class="STYLE1">* </span>
				</td>
			</tr>

			<tr>
				<td align="right" class="title2">备注：</td>


				<td height="100" align="left" class="within2bg"><label>
						<textarea name="remark" rows="3" ><%=request.getParameter("remark") %></textarea>
				</label></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="yesno">
			<tr>
				<td align="center"><input name="Submit2" type="submit"
					class="bevel" value="确定" /> &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; <input
					name="Submit3" type="reset" class="bevel" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>