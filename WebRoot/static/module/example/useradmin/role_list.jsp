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
<h3 id="subTitle">用户管理</h3>
<ul id="button">
	<li><a href="../../jsppub/pub_chswgw.htm">编 辑</a></li>
	<li><a href="#">返 回</a></li>
</ul>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table" valign="top">
    <tr>
        <th width="33%" align="center" nowrap="nowrap" class="title2">岗位</th>
        <th width="53%" align="center" nowrap="nowrap" class="title2">机构</th>
        <th width="14%" align="center" nowrap="nowrap" class="title2">选中</th>
    </tr>
    <tr>
        <td align="center" class="within2bg">主任</td>
        <td align="center" nowrap="nowrap" class="within2bg">办公室</td>
        <td align="center" nowrap="nowrap" class="within2bg"><input type="checkbox" name="checkbox" value="checkbox" />
        </td>
    </tr>
    <tr align="center" class="within2bg">
        <td colspan="3" align="center" class="no_note">没有符合条件的记录</td>
    </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
    <tr>
        <td align="center"><input name="Submit" type="submit" class="bevel" value="确定" />
            &nbsp;
            <input name="Submit2" type="reset" class="bevel" value="取消" />
        </td>
    </tr>
</table>
</body>
</html>