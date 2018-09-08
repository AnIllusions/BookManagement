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
<h3 id="subTitle">开发企业管理</h3>
<ul id="button">
	<li><a href="kaifaqiye_new.htm">新 建</a></li>
	<li><a href="kaifaqiye_del.htm">删 除</a></li>
	<li><a href="kaifaqiye_zanting.htm">暂 停</a></li>
	<li><a href="kaifaqiye_huifu.htm">恢 复</a></li>
</ul>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <form action="" method="post" name="form2" id="form2">
        <tr>
            <td width="20%" nowrap="nowrap">按名称查询：</td>
            <td nowrap="nowrap"><input name="textfield" type="text" class="input2" />
            <input name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
        </tr>
    </form>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
    <form action="" method="post" name="form1" id="form1">
        <tr>
            <td width="24%" align="center" nowrap="nowrap" class="title2">企业名称</td>
            <td width="15%" align="center" nowrap="nowrap" class="title2">帐号</td>
            <td width="14%" align="center" nowrap="nowrap" class="title2">企业类型</td>
            <td width="18%" align="center" nowrap="nowrap" class="title2">单位资质</td>
            <td width="19%" align="center" nowrap="nowrap" class="title2">联系方式</td>
            <td width="10%" align="center" nowrap="nowrap" class="title2">状态</td>
        </tr>
        <tr class="within2bg">
            <td align="center">三通房地产开发有限公司</td>
            <td align="center">admin</td>
            <td align="center">房地产开发</td>
            <td align="center">一级资质</td>
            <td align="center">010－88888888</td>
            <td align="center">激活</td>
        </tr>
        <tr class="within2bg">
            <td align="center">中超房产置业有限公司</td>
            <td align="center">zhangsan</td>
            <td align="center">房地产开发</td>
            <td align="center">二级资质</td>
            <td align="center">010－88888888</td>
            <td align="center">激活</td>
        </tr>
        <tr class="within2bg">
            <td align="center">鑫达置业有限公司</td>
            <td align="center">websky</td>
            <td align="center">房地产开发</td>
            <td align="center">三级资质</td>
            <td align="center">010－88888888</td>
            <td align="center">激活</td>
        </tr>
        <tr class="within2bg">
            <td align="center">鑫苑置业有限公司</td>
            <td align="center">kity</td>
            <td align="center">房地产开发</td>
            <td align="center">四级资质</td>
            <td align="center">010－88888888</td>
            <td align="center">激活</td>
        </tr>
        <tr align="center" class="within2bg">
            <td colspan="6" class="no_note">没有符合条件的记录</td>
        </tr>
    </form>
</table>
<table width="90%"  border="0" align="center" cellpadding="3" cellspacing="0" id="page">
    <tr>
        <td align="right">共有记录 2条 第 1/1页 <a href="#">首页</a> <a href="#">上一页</a> <a href="#">下一页</a> <a href="#">末页</a> 到
            <input name="textfield2" type="text" class="input2" size="5" />
            页
            <input name="Submit6" type="submit" class="buttonInp" value="GO" /></td>
    </tr>
</table>
</body>
</html>