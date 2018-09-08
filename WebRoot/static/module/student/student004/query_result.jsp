<%@page import="com.ambow.model.Student"%>
<%@page import="com.ambow.model.BJi"%>
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
<title>查询结果</title>
<link href="<%=path %>/static/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">查询结果</h3>
	<ul id="button">
		<li><a href="/Book_System/static/module/student/student004/query_student.jsp">返 回</a></li>
	</ul><br></br>
	<form action="" method="post" name="form1" id="form1">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note"><h6>
						查询结果:
						<h6></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table" style="margin-top: 10px;">
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note">班级信息：</td>
			</tr>
			<tr>
				<th width="10%" align="center" nowrap="nowrap" class="title2">班级名称</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">所属类别</th>
				<th width="20%" align="center" nowrap="nowrap" class="title2">所属专业</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">人数</th>
				<th width="40%" align="center" nowrap="nowrap" class="title2">备注</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">修改</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">删除</th>
			</tr>
			<%BJi bJi = (BJi)request.getAttribute("bj");
			  List total = (List)request.getAttribute("total");
			  if(bJi!=null){
				 %>
					  <tr class="within2bg">
						<td align="center"><%=bJi.getName() %></td>
						<td align="center"><%=bJi.getCategory().getName() %></td>
						<td align="center"><%=bJi.getMajor().getName() %></td>
						<td align="center"><%=total.get(0)%></td>
						<td align="left"><%=bJi.getRemark()%></td>
						<td align="center"><a href="static/module/student/student003/modify_class.jsp?id=<%=bJi.getId()%>">修改</a></td>
						<td align="center"><a href="static/module/student/student003/del_class_failed.jsp">删除</a></td>
					</tr>
			<%  
			  }else{%>
				  <tr align="center" class="within2bg">
					<td colspan="9" class="no_note">没有符合条件的记录</td>
				</tr>
			<% }
			%>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table" style="margin-top: 10px;">
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note">班级成员列表：</td>
			</tr>
			<tr>
				<th width="20%" align="center" nowrap="nowrap" class="title2">学号</th>
				<th width="20%" align="center" nowrap="nowrap" class="title2">姓名</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">性别</th>
				<th width="20%" align="center" nowrap="nowrap" class="title2">察看详情</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">删除</th>
			</tr>
			<%List<Student> sList = (List)request.getAttribute("sList");
			  if(sList!=null&&!sList.isEmpty()){
				  for(int i=0;i<sList.size();i++){%>
					  <tr class="within2bg">
						<td align="center"><%=sList.get(i).getNumber() %></td>
						<td align="center"><%=sList.get(i).getSname() %></td>
						<td align="center"><%=sList.get(i).getSex() %></td>
						<td align="center"><a href="static/module/student/student004/student_information.jsp?id=<%=sList.get(i).getId()%>">察看详情</a></td>
						<td align="center"><a href="<%=path%>/StudentServlet?status=delete&id=<%=sList.get(i).getId()%>">删除</a></td>
					</tr>
				<%   }
			  }
			%>
			
		</table>
	</form>
</body>
</html>