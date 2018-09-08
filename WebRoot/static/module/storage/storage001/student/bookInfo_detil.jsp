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
<title>套书详细信息</title>
<link href="<%=path %>/static/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 id="subTitle">套书详细信息</h3>
<ul id="button">
	<li><a href="/Book_System/static/module/storage/storage001/student/deliver_query.jsp">返回</a></li>
	
</ul>

<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
        <tr>
            <td width="30%" nowrap="nowrap">套书基本信息</td>
			<td width="10%" nowrap="nowrap">学年</td>
			<td width="10%" nowrap="nowrap">类别</td>
			<td width="20%" nowrap="nowrap">专业</td>
			<td width="10%" nowrap="nowrap">层次</td>
			<td nowrap="nowrap">年级</td>
        </tr>
        <tr><td></td>
        <td><%=request.getAttribute("xn") %></td>
     <td><%=request.getAttribute("lb") %></td>
     <td><%=request.getAttribute("zy") %></td>
     <td><%=request.getAttribute("cc") %></td>
     <td><%=request.getAttribute("nj") %></td>
     </tr>
</table>

<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
    <tr>
      <th width="26%" align="center" nowrap="nowrap" class="title2">教材名称</th>
      <th width="12%" align="center" nowrap="nowrap" class="title2">版次</th>
      <th width="12%" align="center" nowrap="nowrap" class="title2">作者</th>
      <th width="26%" align="center" nowrap="nowrap" class="title2">出版社</th>
      <th width="12%" align="center" nowrap="nowrap" class="title2">单价</th>
    </tr>
    <%int n=Integer.parseInt(request.getAttribute("n").toString()) ;
    for(int j=0;j<n;j++){%>
    <tr class="within2bg">
       <td><%=request.getAttribute("jcmc"+j)%></td>
       <td><%=request.getAttribute("bc"+j)%></td>
       <td><%=request.getAttribute("zz"+j)%></td>
       <td><%=request.getAttribute("cbs"+j)%></td>
       <td><%=request.getAttribute("dj"+j)%></td>
    </tr>
    <%} %>
  </form>
</table>
<table width="90%"  border="0" align="center" cellpadding="3" cellspacing="0" id="page">
    <tr>
        <td align="right">共有记录 2条 第 1/1页 <a href="#">首页</a> <a href="#">上一页</a> <a href="#">下一页</a> <a href="#">末页</a> 到
            <input name="textfield2" type="text" class="input2" size="5" />
            页
            <input name="Submit6" type="submit" class="buttonInp" value="GO" /></td>
    </tr>
</table>
</body>
</html>