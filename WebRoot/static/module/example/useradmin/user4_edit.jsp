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
<h3 id="subTitle">编辑用户</h3>
<ul id="button">
	<li><a href="user1_list.htm">返回</a></li>
</ul>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="4" class="p4"><span class="title2">用户基本信息</span></th>
    </tr>
    <tr>
        <td width="20%" align="right" class="title2">姓名：</td>
        <td width="30%" class="within2bg"><input name="textfield" type="text" class="input2" /></td>
        <td width="20%" align="right" class="title2">登陆帐号：</td>
        <td width="30%" class="within2bg"><input name="textfield3" type="text" class="input2" /></td>
    </tr>
    <tr>
        <td align="right" class="title2">密码：</td>
        <td class="within2bg"><input name="textfield2" type="text" class="input2" /></td>
        <td align="right" class="title2">确认密码：</td>
        <td class="within2bg"><input name="textfield4" type="text" class="input2" /></td>
    </tr>
    <tr>
        <td height="52" align="right" class="title2">所属机构：</td>
        <td colspan="3" class="within2bg"><table width="86%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="27%" id='td1' style="display:block">历下区房产管理局</td>
                <td width="59%" id='td2' style="display:none">&nbsp;
                            <select name="select">
                                <option selected="selected">请选择机构</option>
                            </select>
                            <select name="select2">
                                <option selected="selected">子机构</option>
                            </select>
                            <select name="select3">
                                <option selected="selected">子机构</option>
              </select></td>
                <td width="14%" align="right"><input type="checkbox" name="checkbox1" value="111" onclick="showlayer()" />
              修改</td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td align="right" class="title2">所属级别：</td>
        <td colspan="3" class="within2bg"><table width="86%"  border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="86%">&nbsp;
                            <select name="select4">
                                <option selected="selected">选择级别</option>
              </select></td>
                <td width="14%" align="right"><input type="checkbox" name="checkbox2" value="checkbox" />
              修改</td>
            </tr>
        </table></td>
    </tr>
    <tr>
        <td align="right" class="title2">岗位：</td>
        <td colspan="3" class="within2bg"><textarea name="textarea" cols="40" class="textarea3"></textarea>
                <input name="Submit" type="submit" class="buttonInp" value="选择" />
            <a href="../../jsppub/pub_chswgw.htm" >选择</a></td>
    </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
    <tr>
        <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
            &nbsp;<a href="user1_list.htm">确定</a>&nbsp;
            <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
    </tr>
</table>
</body>
</html>