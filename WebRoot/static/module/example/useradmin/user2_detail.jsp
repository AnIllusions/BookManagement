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
<h3 id="subTitle">用户详情</h3>
<ul id="button">
	<li><a href="user4_edit.htm">编 辑</a></li>
	<li><a href="user1_list.htm">返 回</a></li>
</ul>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="4" class="p4">用户基本信息</th>
    </tr>
    <tr>
        <td width="20%" align="right" class="title2">姓名：</td>
        <td width="30%" class="within2bg">&nbsp;</td>
        <td width="20%" align="right" class="title2">登录帐号：</td>
        <td width="30%" class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="title2">密码：</td>
        <td class="within2bg">&nbsp;</td>
        <td align="right" class="title2">确认密码：</td>
        <td class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="title2">所属机构：</td>
        <td colspan="3" class="within2bg">办公室</td>
    </tr>
    <tr>
        <td align="right" class="title2">所属级别：</td>
        <td colspan="3" class="within2bg">不限级别</td>
    </tr>
    <tr>
        <td align="right" class="title2">岗位：</td>
        <td colspan="3" class="within2bg">&nbsp;</td>
    </tr>
</table>
</body>
</html>