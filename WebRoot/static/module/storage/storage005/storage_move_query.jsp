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
<title>教材移库</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 id="subTitle">教材移库</h3>

<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
	<form action="<%=path%>/yikuServlet" method="post" name="form2" id="form2">
		<tr>
			<td width="20%" nowrap="nowrap" align="right">请输入架位号：</td>
			<td nowrap="nowrap"><input name="srjiawei" type="text" class="input2" /></td>
			<td width="20%" nowrap="nowrap" align="right">请输入教材名称：</td>
			<td nowrap="nowrap"><input name="srname" type="text" class="input2" />			
		             <input name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
		</tr>
	</form>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
		<th width="20%" align="center" nowrap="nowrap" class="title2">书架号</th>
        <th width="45%" align="center" nowrap="nowrap" class="title2">教材名称</th>
        <th width="20%" align="center" nowrap="nowrap" class="title2">数量</th> 
        <th width="15%" align="center" nowrap="nowrap" class="title2">选中</th>
    </tr>
    
    <tr align="center" class="within2bg">
        <td colspan="6" class="no_note">没有符合条件的记录</td>
    </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" id="page">
    <tr>
        <td align="right">共有记录 2条 第 1/1页 <a href="#">首页</a> <a href="#">上一页</a> <a href="#">下一页</a> <a href="#">末页</a> 到
            <input name="textfield" type="text" class="input2" size="5" />
            页
            <input name="Submit6" type="submit" class="buttonInp" value="GO" /></td>
    </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
    <tr>
        <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
            &nbsp;<!-- <a href="storage_move.jsp">确定</a>&nbsp; -->
            <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
    </tr>
</table>
</body>
</html>