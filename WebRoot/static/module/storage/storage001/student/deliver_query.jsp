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
<title>学生出库查询</title>
<link href="../../../../css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.style1 {color: #FF0000}
-->
</style>
</head>

<body>
<h3 id="subTitle">学生出库信息查询</h3>

<form action="<%=path%>/deliver_queryStudentSevlet" method="post" name="form2" id="form2">
        
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table2">
        <tr>
            <td nowrap="nowrap">类别：
             <select name="lb">
	<option>必修</option>
	<option>选修</option>
	<option>公选课</option>
	</select>
			&nbsp;&nbsp;专业：
			<select name="zy">
	<option>计算机</option>
	<option>英语</option>
	<option>数学</option>
	</select>
			&nbsp;&nbsp;层次：
 <select name="cc">
	<option>本科</option>
	<option>专科</option>
	<option>考研</option>
	</select>
		    &nbsp;&nbsp;年级：
<select name="nj">
	<option>2015级</option>
	<option>2016级</option>
	<option>2017级</option>
	</select>
			&nbsp;&nbsp;班级：<select name="bj">
	<option>1班</option>
	<option>2班</option>
	<option>3班</option>
	</select>  </td>
        </tr>
    	<tr>
            <td width="5%" nowrap="nowrap">按出库时间查询：<input name="begintime"type="text" class="input2" />
			至 
			  <input name="endtime" type="text" class="input2" />
			<input name="Submit" type="submit" class="buttonInp" value="查 询" />           
           </td>
        </tr>
</table>

</form>

<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
  <tr>
    <th width="15%" align="center" nowrap="nowrap" class="title2">学号</th>
    <th width="15%" align="center" nowrap="nowrap" class="title2">姓名</th>
    <th width="15%" align="center" nowrap="nowrap" class="title2">班级</th>
    <th width="15%" align="center" nowrap="nowrap" class="title2">操作员</th>
    <th width="15%" align="center" nowrap="nowrap" class="title2">领书时间</th>
    <th width="15%" align="center" nowrap="nowrap" class="title2">套书</th>
  </tr>
  <tr  align="center"  class="within2bg">
   <td colspan="7" class="no_note">暂无学生出库信息 </td>
  </tr>
</table>
</body>
</html>