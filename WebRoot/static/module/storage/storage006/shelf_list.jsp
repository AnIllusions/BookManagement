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
<title>菜单管理</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 id="subTitle">架位管理</h3>

<ul id="button">
	<li><a href="/Book_System/WebRoot/static/module/storage/storage006/shelf_add.jsp">新 建</a></li>
</ul>

<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
    <form action="<%=path%>/serchhuojiaServlet" method="post" name="form2" id="form2">
        <tr>
            <td width="90" align="center" nowrap="nowrap">查询：</td>
            <td nowrap="nowrap"> 
			 &nbsp;&nbsp;
			 <input type="text" name="shelfName">&nbsp;&nbsp;
            <input name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
        </tr>
    </form>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
    <form action="" method="post" name="form1" id="form1">
        <tr>
            <th width="29%" align="center" nowrap="nowrap" class="title2">架位名称</th>
            <th width="39%" align="center" nowrap="nowrap" class="title2">备注</th>
			<th width="32%" align="center" nowrap="nowrap" class="title2">操作</th>
        </tr>
       
        <tr align="center" class="within2bg">
            <td colspan="6" class="no_note">没有符合条件的记录</td>
        </tr>
    </form>
</table>
<table width="90%"  border="0" align="center" cellpadding="3" cellspacing="0" id="page">
  <tr>
    <td align="right">共有记录 2条 第 1/1页 <a href="#">首页</a> <a href="#">上一页</a> <a href="#">下一页</a> <a href="#">末页</a> 到
      <input name="textfield" type="text" class="input2" size="5" />
      页
      <input name="Submit6" type="submit" class="buttonInp" value="GO" /></td>
  </tr>
</table>
</body>
</html>