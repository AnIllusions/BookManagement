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
	<li><a href="#">编 辑</a></li>
	<li><a href="user1_list.htm">返 回</a></li>
	<li><a href="#">修改口令</a></li>
</ul>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="4" class="p4"><span class="title2">用户基本信息</span></th>
    </tr>
    <tr>
        <td width="13%" align="center" class="title2">姓名</td>
        <td width="37%" class="within2bg">&nbsp;</td>
        <td width="13%" align="center" class="title2">性别</td>
        <td width="37%" class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="title2">单位</td>
        <td class="within2bg">&nbsp;</td>
        <td align="center" class="title2">机构</td>
        <td class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="title2">岗位</td>
        <td class="within2bg">&nbsp;</td>
        <td align="center" class="title2">移动电话</td>
        <td class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" nowrap="nowrap" class="title2">办公电话1</td>
        <td class="within2bg">&nbsp;</td>
        <td align="center" nowrap="nowrap" class="title2">办公电话2</td>
        <td class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="title2">BP机</td>
        <td class="within2bg">&nbsp;</td>
        <td align="center" class="title2">传真</td>
        <td class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" class="title2">电子邮件</td>
        <td class="within2bg">&nbsp;</td>
        <td align="center" class="title2">个人主页</td>
        <td class="within2bg">&nbsp;</td>
    </tr>
</table>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="4" class="p4"><span class="title2">家庭信息</span></th>
    </tr>
    <tr>
        <td width="13%" align="center" class="title2">家庭电话</td>
        <td width="37%" class="within2bg">&nbsp;</td>
        <td width="13%" align="center" class="title2">生 日</td>
        <td width="37%" class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="center" valign="top" class="title2">家庭地址</td>
        <td class="within2bg">&nbsp;</td>
        <td align="center" valign="top" class="title2">邮政编码</td>
        <td valign="top" class="within2bg">&nbsp;</td>
    </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th class="within2bg">&nbsp;&nbsp;备注</th>
    </tr>
    <tr>
        <td class="within2bg">&nbsp;</td>
    </tr>
</table>
</body>
</html>