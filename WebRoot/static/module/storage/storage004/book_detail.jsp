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
<h3 id="subTitle">盘点查看</h3>

<ul id="button">
	<li><a href="get_query_pandian.jsp">返回</a></li>
        
</ul>

<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="7" class="p4"><span class="title2">以下为该教材的教材明细</span></th>
    </tr>
    <tr>
        <td width="15%" align="center" class="title2">ISBN</td>
        <td width="15%" align="center" class="title2">教材名</td>
        <td width="8%" align="center" class="title2">作者</td>
        <td width="15%" align="center" class="title2">出版社</td>
        <td width="10%" align="center" class="title2">出版日期</td>
        <td width="8%" align="center" class="title2">版次</td>
        <td width="5%" align="center" class="title2">单价</td>
        
    </tr>
    <tr>
        <td align="center" class="title2">147</td>
        <td class="within2bg" align="center" >&nbsp;Java技术详解</td>
        <td class="within2bg" align="center" >&nbsp;王艳</td>
        <td class="within2bg" align="center" >&nbsp;电子工业出版社</td>
        <td class="within2bg" align="center" >&nbsp;2005.8</td>
        <td class="within2bg" align="center" >&nbsp;修订版</td>
        <td class="within2bg" align="center" >&nbsp;35</td>
        
    </tr>
   
    
</table>


</body>
</html>