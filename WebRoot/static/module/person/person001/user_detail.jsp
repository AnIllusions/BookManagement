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
<h3 id="subTitle">用户信息</h3>

<form name="form1" method="post" action="">
    <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
        <tr>
            <th colspan="4" align="center" class="title2">用户基本信息</th>
        </tr>
      
        <tr>
            <td width="27%" align="right" class="title2">姓名：</td>
          <td width="73%" class="within2bg"><%=session.getAttribute("name") %>       </td>
        </tr>

      
        <tr>
            <td align="right" class="title2">职位：</td>
            <td class="within2bg"><%=session.getAttribute("position") %>
           </td>
        </tr>
       <tr> <td align="right" class="title2">电话：</td>
         <td class="within2bg">&nbsp;<%=session.getAttribute("tel") %>
         </td>
       </tr>
        <tr>
            <td align="right" class="title2">角色：</td>
          <td class="within2bg">&nbsp;<%=session.getAttribute("role") %>
           
 </td>
        </tr>
   
    <tr>
      <td align="right" class="title2">备注：</td>
           
            
       <td align="left" class="within2bg"><%=session.getAttribute("remark") %></td>
      </tr>
    </table>
    <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
        <tr>
		
            <td align="center">   <td align="center"><a href="user_modify.jsp">修改</a></td>
        </tr>
    </table>
</form>
</body>
</html>