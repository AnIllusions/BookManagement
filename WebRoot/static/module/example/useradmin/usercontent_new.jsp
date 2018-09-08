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
<h3 id="subTitle">添加用户详情</h3>
<ul id="button">
	<li><a href="user1_list.htm">返回</a></li>
</ul>
<form name="form1" method="post" action="">
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
        <tr>
            <th colspan="4" align="center" class="title2">用户基本信息</th>
        </tr>
        <tr>
            <td width="13%" align="center" class="title2">姓名</td>
            <td width="37%" class="within2bg">&nbsp;
            <input name="textfield" type="text" class="input2" /></td>
            <td width="13%" align="center" class="title2">性别</td>
            <td width="37%" class="within2bg">&nbsp;
                    <input type="radio" name="radiobutton" value="radiobutton" />
                男
                &nbsp;
                            <input type="radio" name="radiobutton" value="radiobutton" />
                女 </td>
        </tr>
        <tr>
            <td align="center" class="title2">单位</td>
            <td class="within2bg">&nbsp;
            <input name="textfield2" type="text" class="input2" /></td>
            <td align="center" class="title2">机构</td>
            <td class="within2bg">&nbsp;
            <input name="textfield7" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="center" class="title2">岗位</td>
            <td class="within2bg">&nbsp;
            <input name="textfield3" type="text" class="input2" /></td>
            <td align="center" class="title2">移动电话</td>
            <td class="within2bg">&nbsp;
            <input name="textfield8" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="center" nowrap="nowrap" class="title2">办公电话1</td>
            <td class="within2bg">&nbsp;
            <input name="textfield4" type="text" class="input2" /></td>
            <td align="center" nowrap="nowrap" class="title2">办公电话2</td>
            <td class="within2bg">&nbsp;
            <input name="textfield9" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="center" class="title2">BP机</td>
            <td class="within2bg">&nbsp;
            <input name="textfield5" type="text" class="input2" /></td>
            <td align="center" class="title2">传真</td>
            <td class="within2bg">&nbsp;
            <input name="textfield10" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="center" class="title2">电子邮件</td>
            <td class="within2bg">&nbsp;
            <input name="textfield6" type="text" class="input2" /></td>
            <td align="center" class="title2">个人主页</td>
            <td class="within2bg">&nbsp;
            <input name="textfield11" type="text" class="input2" /></td>
        </tr>
    </table>
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
        <tr>
            <th colspan="4" align="center" valign="top" class="title2">家庭信息</th>
        </tr>
        <tr>
            <td width="13%" align="center" class="title2">家庭电话</td>
            <td width="37%" class="within2bg">&nbsp;
            <input name="textfield12" type="text" class="input2" /></td>
            <td width="13%" align="center" class="title2">生 日</td>
            <td width="37%" class="within2bg">&nbsp;
            <input name="textfield14" type="text" class="input2" /></td>
        </tr>
        <tr>
            <td align="center" valign="top" class="title2">家庭地址</td>
            <td class="within2bg">&nbsp;
            <input name="textfield13" type="text" class="input2" /></td>
            <td align="center" valign="top" class="title2">邮政编码</td>
            <td valign="top" class="within2bg">&nbsp;
            <input name="textfield15" type="text" class="input2" /></td>
        </tr>
    </table>
    <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="1" class="table">
        <tr>
            <th class="within2bg">备注</th>
        </tr>
        <tr>
            <td class="within2bg"><textarea name="textarea" rows="6" class="textarea1"></textarea></td>
        </tr>
    </table>
    <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
        <tr>
            <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
                &nbsp;<a href="user1_list.htm">确定</a>&nbsp;
                <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
        </tr>
    </table>
</form>
</body>
</html>