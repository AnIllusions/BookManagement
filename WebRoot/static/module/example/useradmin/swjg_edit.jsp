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
<h3 id="subTitle">编辑机构</h3>
<ul id="button">
	<li><a href="swjg_list.htm">返回</a></li>
</ul>
<form action="" method="post" name="form1" id="form1">
    <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
        <tr>
            <th colspan="4" class="p4">机构基本信息</th>
        </tr>
        <tr>
            <td width="20%" align="right" class="title2">机构code：</td>
            <td width="30%" class="within2bg"><input name="textfield" type="text" class="input2" /></td>
            <td width="20%" align="right" class="title2">机构名称：</td>
            <td width="30%" class="within2bg"><input name="textfield3" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="right" class="title2">机构简称：</td>
            <td class="within2bg"><input name="textfield2" type="text" class="input2" /></td>
            <td align="right" class="title2">机构标志：</td>
            <td class="within2bg"><select name="select5">
                <option>机关</option>
                <option>部门</option>
            </select>
            </td>
        </tr>
        <tr>
            <td align="right" class="title2">机构邮编：</td>
            <td class="within2bg"><input name="textfield4" type="text" class="input2" /></td>
            <td align="right" class="title2">机构电话：</td>
            <td class="within2bg"><input name="textfield8" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="right" class="title2">机构地址：</td>
            <td class="within2bg"><input name="textfield5" type="text" class="input2" /></td>
            <td align="right" class="title2">机构传真：</td>
            <td class="within2bg"><input name="textfield9" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="right" class="title2">E-mail地址：</td>
            <td class="within2bg"><input name="textfield6" type="text" class="input2" /></td>
            <td align="right" class="title2">行政区划代码：</td>
            <td class="within2bg"><input name="textfield10" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="right" class="title2">机构负责人：</td>
            <td class="within2bg"><input name="textfield7" type="text" class="input2" /></td>
            <td align="right" class="title2">机构分管领导：</td>
            <td class="within2bg"><input name="textfield11" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="right" class="title2">机构级次代码：</td>
            <td colspan="3" class="within2bg"><select name="select">
                <option>历下区房管局</option>
                <option>商河县房管局</option>
            </select></td>
        </tr>
        <tr>
            <td align="right" class="title2">机构责任：</td>
            <td colspan="3" class="within2bg"><textarea name="textarea" cols="80" rows="10" class="textarea3"></textarea></td>
        </tr>
    </table>
    <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
        <tr>
            <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
                &nbsp;
                <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
        </tr>
    </table>
</form>
</body>
</html>