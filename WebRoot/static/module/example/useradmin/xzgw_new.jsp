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
<h3 id="subTitle">新建岗位</h3>
<ul id="button">
	<li><a href="xzgw_list.htm">返回</a></li>
</ul>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="2" class="p4"><span class="title2">岗位基本信息</span></th>
    </tr>
    <tr>
        <td width="20%" align="right" class="title2">岗位code：</td>
        <td class="within2bg">&nbsp;
        <input name="textfield" type="text" class="input2" /></td>
    </tr>
    <tr>
        <td align="right" class="title2">隶属机构：</td>
        <td class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="title2">岗位名称：</td>
        <td class="within2bg">&nbsp;
        <input name="textfield2" type="text" class="input2" /></td>
    </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
    <tr>
        <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
            &nbsp;<a href="xzgw_list.htm">确定</a>&nbsp;
            <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
    </tr>
</table>
</body>
</html>