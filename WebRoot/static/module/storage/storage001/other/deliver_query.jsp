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
<title>其它领书查询</title>
<link href="../../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 id="subTitle">其它领书查询</h3>
<form name="" method="post"action="<%=path%>/deliver_queryOtherSevlet">
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
<tr>
		<td nowrap="nowrap">按出库时间查询：
			 <input name="begintime" type="text" class="input2""/>
			 至
			 <input name="endtime" type="text" class="input2" />
		     <input name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
	</tr>
</table>
</form>

<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
  <tr>
    <th width="16%" align="center" nowrap="nowrap" class="title2">教材名称</th>
    <th width="13%" align="center" nowrap="nowrap" class="title2">版次</th>
    <th width="13%" align="center" nowrap="nowrap" class="title2">作者</th>
    <th width="17%" align="center" nowrap="nowrap" class="title2">出版社</th>
    <th width="7%" align="center" nowrap="nowrap" class="title2">操作员</th>
    <th width="16%" align="center" nowrap="nowrap" class="title2">出库时间</th>
    <th width="7%" align="center" nowrap="nowrap" class="title2">领用人</th>
    <th width="7%" align="center" nowrap="nowrap" class="title2">数量</th>
  </tr>
  
  <tr align="center" class="within2bg">
    <td colspan="10" class="no_note">没有符合条件的记录</td>
  </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="3" cellspacing="0" id="page">
    <tr>
        <td align="right">共有记录 2条 第 1/1页 <a href="#">首页</a> <a href="#">上一页</a> <a href="#">下一页</a> <a href="#">末页</a> 到
            <input name="textfield2" type="text" class="page_input" size="5" />
          页
    <input name="Submit6" type="submit" class="bevel" value="GO" /></td>
    </tr>
</table>
</body>
</html>