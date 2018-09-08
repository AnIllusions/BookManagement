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
<title>教材管理系统</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />

</head>

<body>
<h3 id="subTitle">盘点管理－盘点记录查看</h3>
<!-- 
<form action=get_query_pandian.jsp> -->
<form action="<%=path%>/jiluServlet" method="post">
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    
    
    <tr>
        <td width="20%" align="right" class="title2">管理员:</td>
	<td class="within2bg">&nbsp;<input name="gly" type="text" class="input2"/></td>
    </tr>
    <tr>
        <td width="20%" align="right" class="title2">起始时间:</td>
        <td class="within2bg">&nbsp;<input name="qssj" type="text" class="input2"/></td>
    </tr>

    <tr>
        <td width="20%" align="right" class="title2">终止时间:</td>
        <td class="within2bg">&nbsp;<input name="zzsj" type="text" class="input2"/></td>
    </tr>
<tr>
        <td width="20%" align="center" class="title2"></td>              
        <td class="within2bg">&nbsp;
                  <input name="Submit2" type="submit" class="input2" value="查看"/>
                  <input name="Submit3" type="reset" class="input2" value="重置" />
        </td>
    </tr>
    
</table>

</form>
</body>
</html>