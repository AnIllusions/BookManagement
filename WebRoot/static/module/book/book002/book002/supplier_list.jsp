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
<h3 id="subTitle">供应商管理</h3>

<ul id="button">
	<li><a href="supplier_add.htm">新 建</a></li>
</ul>

<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
    <form action="" method="post" name="form2" id="form2">
        <tr>
            <td width="90" align="center" nowrap="nowrap">查询：</td>
            <td nowrap="nowrap">
			 &nbsp;
			<select name="group1">              
				<option value="ddd">仓库管理员</option>
<option value="ddd">fdsfds</option>
<option value="ddd">fdsfsd</option>
<option value="ddd">dffdssf</option>
<option value="ddd">fsdfs</option>
            </select>
            <input name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
        </tr>
    </form>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
    <form action="" method="post" name="form1" id="form1">
        <tr>
          <th width="11%" align="center" nowrap="nowrap" class="title2">序号<br></th>
            <th width="17%" align="center" nowrap="nowrap" class="title2">供应商名<br></th>
          <th width="12%" align="center" nowrap="nowrap" class="title2">联系人<br></th>
          <th width="13%" align="center" nowrap="nowrap" class="title2">联系电话<br></th>
          <th width="16%" align="center" nowrap="nowrap" class="title2">地址</th>
			<th width="17%" align="center" nowrap="nowrap" class="title2">电子邮件</th>
			<th width="14%" align="center" nowrap="nowrap" class="title2">操作</th>
        </tr>
        <tr class="within2bg">
            <td align="center">1<br></td>
          <td align="center">建筑大学<br></td>
            <td align="center">小际<br></td>
            <td align="center">86364321<br></td>
            <td align="center">山大路</td>
			<td align="center">5655@55.com</td>
			<td align="center"><a href="supplier_modify.htm">修改</a>  &nbsp;&nbsp;&nbsp;删除</td>
        </tr>
        <tr class="within2bg">
            <td align="center">2<br></td>
          <td align="center"><a href="supplier_detail.htm">建筑大学</a><br></td>
            <td align="center">小李<br></td>
            <td align="center">86364321<br></td>
            <td align="center">分明年公路</td>
			<td align="center">5655@55.com</td>
			<td align="center"><a href="supplier_modify.htm">修改</a>  &nbsp;&nbsp;&nbsp;删除</td>
        </tr>
        <tr class="within2bg">
            <td align="center">3<br></td>
            <td align="center"><a href="supplier_detail.htm">李主出</a></td>
            <td align="center">小王<br></td>
            <td align="center">86364322</td>
            <td align="center">山东就书籍路</td>
			<td align="center">5655@55.com</td>
			<td align="center"><a href="supplier_modify.htm">修改</a>   &nbsp;&nbsp;&nbsp;删除</td>
        </tr>
        <tr align="center" class="within2bg">
            <td colspan="7" class="no_note">没有符合条件的记录</td>
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