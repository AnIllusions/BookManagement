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
<h3 id="subTitle">用户管理－暂停</h3>
<ul id="button">
	<li><a href="user1_list.htm">返回</a></li>
</ul>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th width="15%" align="center" nowrap="nowrap" class="title2">所属机构</th>
        <th width="15%" align="center" nowrap="nowrap" class="title2">姓名</th>
        <th width="15%" align="center" nowrap="nowrap" class="title2">帐号</th>
        <th align="center" nowrap="nowrap" class="title2">机构岗位</th>
        <th width="10%" align="center" nowrap="nowrap" class="title2">当前状态</th>
        <th width="5%" align="center" nowrap="nowrap" class="title2">选中</th>
    </tr>
    <tr class="within2bg">
        <td align="center">－－</td>
        <td align="center">张主任</td>
        <td align="center">admin</td>
        <td>&nbsp;主任</td>
        <td align="center">激活</td>
        <td align="center" class="font_hilite"><input type="checkbox" name="checkbox4" value="checkbox" /></td>
    </tr>
    <tr class="within2bg">
        <td align="center">办公室</td>
        <td align="center">董&nbsp;&nbsp;&nbsp;工</td>
        <td align="center">dongxc</td>
        <td>工程师</td>
        <td align="center">激活</td>
        <td align="center" class="font_hilite"><input type="checkbox" name="checkbox" value="checkbox" /></td>
    </tr>
    <tr class="within2bg">
        <td align="center">办公室</td>
        <td align="center">徐&nbsp;&nbsp;&nbsp;工</td>
        <td align="center">xul</td>
        <td>工程师</td>
        <td align="center">激活</td>
        <td align="center"><span class="font_hilite">
            <input type="checkbox" name="checkbox2" value="checkbox" />
        </span></td>
    </tr>
    <tr class="within2bg">
        <td align="center">办公室</td>
        <td align="center">孙&nbsp;&nbsp;&nbsp;工</td>
        <td align="center">sunwh</td>
        <td>工程师</td>
        <td align="center">激活</td>
        <td align="center" class="font_dark"><span class="font_hilite">
            <input type="checkbox" name="checkbox3" value="checkbox" />
        </span></td>
    </tr>
    <tr align="center" class="within2bg">
        <td colspan="6" class="no_note">没有符合条件的记录</td>
    </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
    <tr>
        <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
            &nbsp;<a href="user1_list.htm">确定</a>&nbsp;
            <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
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
</body>
</html>