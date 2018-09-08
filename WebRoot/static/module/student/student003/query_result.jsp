<%@page import="com.ambow.model.BJi"%>
<%@page import="com.ambow.utils.*"%>
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
		<li><a href="/Book_System/static/module/student/student003/query_class.jsp">返 回</a></li>
	</ul></br>
	<form action="" method="post" name="form1" id="form1">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table" style="margin-top: 10px;">
			<tr align="center" class="within2bg">
			<td colspan="7" class="no_note"><h6>
					查询结果:
					<h6></td>
		</tr>
			<tr>
				<th width="10%" align="center" nowrap="nowrap" class="title2">班级名称</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">所属类别</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">所属层次</th>
				<th width="20%" align="center" nowrap="nowrap" class="title2">所属专业</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">人数</th>
				<th width="35%" align="center" nowrap="nowrap" class="title2">备注</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">修改</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">删除</th>
			</tr>
			<%-- <c:forEach var="bj" items="${requestScope.pageResults.getResults() }">
				<tr class="within2bg">
					<td align="center">${bj.getName() }</td>
					<td align="center">${bj.getCategory().getName()}</td>
					<td align="center">${bj.getLevel().getName()}</td>
					<td align="center">${bj.get(i).getMajor().getName()}</td>
					<td align="center"></td>
					<td align="left">${bj.getRemark()}</td>
					<td align="center"><a
						href="pages/module/student/student003/modify_class.jsp?id=${bj.getId() }">修改</a></td>
					<td align="center"><a
						href="<%=path%>/BJiServlet?status=delete&id=${bj.getId() }">删除</a></td>
				</tr>
			</c:forEach> --%>
			<%List<BJi> list = (List)request.getAttribute("bList");
			  List total = (List)request.getAttribute("total");
			  if(list!=null&&!list.isEmpty()){
				  for(int i=0;i<list.size();i++){%>
					  <tr class="within2bg">
						<td align="center"><%=list.get(i).getName() %></td>
						<td align="center"><%=list.get(i).getCategory().getName() %></td>
						<td align="center"><%=list.get(i).getLevel().getName() %></td>
						<td align="center"><%=list.get(i).getMajor().getName() %></td>
						<td align="center"><%=total.get(i)%></td>
						<td align="left"><%=list.get(i).getRemark() %></td>
						<td align="center"><a href="static/module/student/student003/modify_class.jsp?id=<%=list.get(i).getId()%>">修改</a></td>
						<td align="center"><a href="<%=path%>/BJiServlet?status=delete&id=<%=list.get(i).getId()%>">删除</a></td>
					</tr>
			<%  }
			  }else{%>
			 <%--  <c:if test="${requestScope.pageResults.getTotalCount()==0 }"> --%>
				  <tr align="center" class="within2bg">
					<td colspan="9" class="no_note">没有符合条件的记录</td>
				</tr>
				<%-- </c:if> --%>
			<% }
			%>
		</table>
	</form>
</body>
</html>