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
<h3 id="subTitle">用户管理-机构维护</h3>
<ul id="button">
	<li><a href="swjg_new.htm">新 建</a></li>
</ul>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <form action="" method="post" name="form1" id="form1">
        <tr>
            <th width="8%" colspan="2" align="center" nowrap="nowrap" class="title2">排&nbsp;序</th>
            <th width="10%" align="center" nowrap="nowrap" class="title2">机构序号</th>
            <th align="center" nowrap="nowrap" class="title2">机构名称</th>
            <th width="10%" align="center" nowrap="nowrap" class="title2">编辑</th>
            <th width="10%" align="center" nowrap="nowrap" class="title2">删除</th>
            <th width="12%" align="center" nowrap="nowrap" class="title2">下级类别</th>
            <th width="12%" align="center" nowrap="nowrap" class="title2">机构岗位</th>
        </tr>
        <tr class="within2bg">
            <td align="center" nowrap="nowrap"><a href="#"></a></td>
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/down.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center">1</td>
            <td align="center">房地产管理局</td>
            <td align="center"><a href="swjg_edit.htm">编辑</a></td>
            <td align="center"><a href="#" class="adel">删除</a></td>
            <td align="center"><a href="#">下级机构</a></td>
            <td align="center"><a href="xzgw_list.htm">岗位</a></td>
        </tr>
        <tr class="within2bg">
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/up.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/down.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center">2</td>
            <td align="center">历下区房地产管理局</td>
            <td align="center"><a href="swjg_edit.htm">编辑</a></td>
            <td align="center"><a href="#" class="adel">删除</a></td>
            <td align="center"><a href="#">下级机构</a></td>
            <td align="center" nowrap="nowrap"><a href="#">岗位</a></td>
        </tr>
        <tr class="within2bg">
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/up.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/down.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center">3</td>
            <td align="center">商河县房地产管理局</td>
            <td align="center"><a href="swjg_edit.htm">编辑</a></td>
            <td align="center"><a href="#" class="adel">删除</a></td>
            <td align="center"><a href="#">下级机构</a></td>
            <td align="center" nowrap="nowrap"><a href="#">岗位</a></td>
        </tr>
        <tr class="within2bg">
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/up.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/down.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center">4</td>
            <td align="center">济阳县房地产管理局</td>
            <td align="center"><a href="swjg_edit.htm">编辑</a></td>
            <td align="center"><a href="#" class="adel">删除</a></td>
            <td align="center"><a href="#">下级机构</a></td>
            <td align="center" nowrap="nowrap"><a href="#">岗位</a></td>
        </tr>
        <tr class="within2bg">
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/up.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/down.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center">5</td>
            <td align="center">济阳县房地产管理局</td>
            <td align="center"><a href="swjg_edit.htm">编辑</a></td>
            <td align="center"><a href="#" class="adel">删除</a></td>
            <td align="center"><a href="#">下级机构</a></td>
            <td align="center" nowrap="nowrap"><a href="#">岗位</a></td>
        </tr>
        <tr class="within2bg">
            <td align="center" nowrap="nowrap"><a href="#"><img src="../../../images/up.gif" width="16" height="16" border="0" align="absmiddle" /></a></td>
            <td align="center" nowrap="nowrap"><a href="#"></a></td>
            <td align="center">6</td>
            <td align="center">济阳县房地产管理局</td>
            <td align="center"><a href="swjg_edit.htm">编辑</a></td>
            <td align="center"><a href="#" class="adel">删除</a></td>
            <td align="center"><a href="#">下级机构</a></td>
            <td align="center" nowrap="nowrap"><a href="#">岗位</a></td>
        </tr>
        <tr align="center" class="within2bg">
            <td height="40" colspan="8" align="center"><input name="Submit2" type="submit" class="buttonInp" value="确定" />
                &nbsp;
                <input name="Submit22" type="submit" class="buttonInp" value="取消" /></td>
        </tr>
        <tr align="center" class="within2bg">
            <td align="center" colspan="8" class="no_note">没有符合条件的记录</td>
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