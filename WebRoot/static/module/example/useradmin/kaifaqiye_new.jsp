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
<h3 id="subTitle">新建用户</h3>
<ul id="button">
	<li><a href="kaifaqiye_list.jsp">返回</a></li>
</ul>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="4" class="p4"><span class="title2">用户基本信息</span></th>
    </tr>
    <tr>
        <td width="16%" align="right" class="title2">企业名称：</td>
        <td width="37%" class="within2bg"><input name="textfield" type="text" class="input2" /></td>
        <td width="14%" align="right" class="title2">登陆帐号：</td>
        <td width="33%" class="within2bg"><input name="textfield3" type="text" class="input2" /></td>
    </tr>
    <tr>
        <td align="right" class="title2">密码：</td>
        <td class="within2bg"><input name="textfield2" type="text" class="input2" /></td>
        <td align="right" class="title2">确认密码：</td>
        <td class="within2bg"><input name="textfield4" type="text" class="input2" /></td>
    </tr>
    <tr>
        <td align="right" class="title2">单位地址：</td>
        <td class="within2bg"><input name="textfield5" type="text" class="input2" /></td>
        <td align="right" class="within2bg">&nbsp;</td>
        <td class="within2bg">&nbsp;</td>
    </tr>
    <tr>
        <td align="right" class="title2">企业性质：</td>
        <td class="within2bg"><input name="textfield6" type="text" class="input2" /></td>
        <td align="right" class="within2bg">企业资质：</td>
        <td class="within2bg"><input name="textfield9" type="text" class="input2" /></td>
    </tr>
    <tr>
        <td height="22" align="right" class="title2">法人代表：</td>
        <td class="within2bg"><input name="textfield7" type="text" class="input2" /></td>
        <td align="right" class="within2bg">联系人：</td>
        <td class="within2bg"><input name="textfield8" type="text" class="input2" /></td>
    </tr>
    <tr>
        <td height="22" align="right" class="title2">邮政编码：</td>
        <td class="within2bg"><input name="textfield10" type="text" class="input2" /></td>
        <td align="right" class="within2bg">电话：</td>
        <td class="within2bg"><input name="textfield11" type="text" class="input2" /></td>
    </tr>
    <tr>
        <td height="22" align="right" class="title2">E－mail：</td>
        <td class="within2bg"><input name="textfield12" type="text" class="input2" /></td>
        <td align="right" class="within2bg">网址：</td>
        <td class="within2bg"><input name="textfield13" type="text" class="input2" /></td>
    </tr>
</table>
<table width="90%"  border="0" cellpadding="0" cellspacing="0" class="yesno">
    <tr>
        <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
            &nbsp;<a href="kaifaqiye_list.jsp">确定</a>&nbsp;
            <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
    </tr>
</table>
</body>
</html>