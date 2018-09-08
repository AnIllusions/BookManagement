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
<h3 id="subTitle">用户管理－按机构</h3>
<ul id="button">
	<li><a href="user3_new.htm">新 建</a></li>
	<li><a href="user5_list_del.htm">删 除</a></li>
	<li><a href="user6_list_pause.htm">暂 停</a></li>
	<li><a href="user7_list_resume.htm">恢 复</a></li>
</ul>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
    <form action="" method="post" name="form2" id="form2">
        <tr>
            <td width="90" nowrap="nowrap">按机构查询：</td>
            <td nowrap="nowrap"><select name="group1">
                <option value="">机构列表</option>
            </select>
                    <select name="group2">
                        <option value="">子机构</option>
                    </select>
                    <select name="group3">
                        <option value="">子机构</option>
                </select>
            <input name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
        </tr>
    </form>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
    <form action="" method="post" name="form1" id="form1">
        <tr>
            <th width="15%" align="center" nowrap="nowrap" class="title2">所属机构</th>
            <th width="15%" align="center" nowrap="nowrap" class="title2">姓名</th>
            <th width="15%" align="center" nowrap="nowrap" class="title2">帐号</th>
            <th align="center" nowrap="nowrap" class="title2">机构岗位</th>
            <th width="10%" align="center" nowrap="nowrap" class="title2">当前状态</th>
        </tr>
        <tr class="within2bg">
            <td align="center">－－</td>
            <td align="center"><a href="user2_detail.htm">张主任</a></td>
            <td align="center">admin</td>
            <td><a href="role_list.htm">&nbsp;主任</a></td>
            <td align="center">激活</td>
        </tr>
        <tr class="within2bg">
            <td align="center">办公室</td>
            <td align="center"><a href="user2_detail.htm">董&nbsp;&nbsp;&nbsp;工</a></td>
            <td align="center">dongxc</td>
            <td><a href="role_list.htm">工程师</a></td>
            <td align="center">激活</td>
        </tr>
        <tr class="within2bg">
            <td align="center">办公室</td>
            <td align="center"><a href="user2_detail.htm">徐&nbsp;&nbsp;&nbsp;工</a></td>
            <td align="center">xul</td>
            <td><a href="role_list.htm">工程师</a></td>
            <td align="center">激活</td>
        </tr>
        <tr class="within2bg">
            <td align="center">办公室</td>
            <td align="center"><a href="user2_detail.htm">孙&nbsp;&nbsp;&nbsp;工</a></td>
            <td align="center">sunwh</td>
            <td><a href="role_list.htm">工程师</a></td>
            <td align="center">激活</td>
        </tr>
        <tr align="center" class="within2bg">
            <td colspan="5" class="no_note">没有符合条件的记录</td>
        </tr>
    </form>
</table>
</body>
</html>