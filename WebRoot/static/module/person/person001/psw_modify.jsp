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
<style type="text/css">
<!--
.STYLE1 {color: #FF0000}
-->
</style>
</head>

<body>
<h3 id="subTitle">用户密码修改</h3>
<form name="form1" method="post" action="<%=path%>/OperatorModifyServlet">
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <input name="account1" type="hidden" class="input2" value="<%=session.getAttribute("account")%>"/>
    <input name="name" type="hidden" class="input2" value="<%=session.getAttribute("name")%>"/>
    <input name="position" type="hidden" class="input2" value="<%=session.getAttribute("position")%>"/>
    <input name="tel" type="hidden" class="input2" value="<%=session.getAttribute("tel")%>"/>
    <input name="role" type="hidden" class="input2" value="<%=session.getAttribute("role")%>"/>
    <input name="id" type="hidden" class="input2" value="<%=session.getAttribute("id")%>"/>
    <input name="remark" type="hidden" class="input2" value="<%=session.getAttribute("remark")%>"/>
     <tr>
        <td width="26%" align="right" class="title2">旧密码：</td>
      <td width="74%" class="within2bg"><input name="oldpw" type="password" class="input2" /></td>
        
    </tr>
　　<tr>
   <td align="right" class="title2">新密码：</td>
    <td class="within2bg"><input name="newpw" type="password" class="input2" /></td>
    </tr>
　<tr>
   <td align="right" class="title2">确认新密码：</td>
    <td class="within2bg"><input name="renewpw" type="password" class="input2" /></td>
    </tr>
  
</table>
<table width="90%"  border="0" cellpadding="0" cellspacing="0" class="yesno">
    <tr>
        <td align="center"><input name="Submit2" type="submit" class="bevel" value="确定" />
            &nbsp;&nbsp;  &nbsp;&nbsp;
            <input name="Submit3" type="reset" class="bevel" value="取消" /></td>
    </tr>
</table>
</form>
</body>
</html>