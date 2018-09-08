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
<title>学生领书―编辑套书</title>
<link href="../../../../css/css.css" rel="stylesheet" type="text/css" />
<style type="text/css">
<!--
.STYLE1 {color: #0000FF}
.STYLE2 {color: #EFF7FF}
-->
</style>
</head>

<body>
<h3 id="subTitle">学生领书―编辑套书</h3>
<!--<form name="" method="" action="bookInfo_detil.jsp">-->
<form method ="post" action="<%=path %>/editbookServlet">
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
  <tr>
    <td width="15%" align="right" class="title2">学年：</td>
    <td width="85%" class="within2bg">&nbsp;
      <select name="xn">
        <option>2001-2002</option>
        <option>2002-2003</option>
        <option>2003-2004</option>
        <option>2004-2005</option>
        <option>2005-2006</option>
        <option>2006-2007</option>
        <option>2007-2008</option>
        <option>2008-2009</option>
        <option>2009-2010</option>
      </select></td>
  </tr>
  <tr>
    <td align="right" class="title2">学期：</td>
    <td colspan="3" class="within2bg">&nbsp;
        <select name="xq">
	<option>第一学期</option>
	<option>第二学期</option>
	</select></td>
  </tr>
  <tr>
    <td align="right" class="title2">类别：</td>
    <td colspan="3" class="within2bg">&nbsp;
        <select name="lb">
	<option>必修</option>
	<option>选修</option>
	<option>公选课</option>
	</select></td>
  </tr>
  <tr>
    <td align="right" class="title2">专业：</td>
    <td colspan="3" class="within2bg">&nbsp;
        <select name="zy">
	<option>计算机</option>
	<option>英语</option>
	<option>数学</option>
	</select></td>
  </tr>
  <tr>
    <td align="right" class="title2">层次：</td>
    <td colspan="3" class="within2bg">&nbsp;
        <select name="cc">
	<option>本科</option>
	<option>专科</option>
	<option>考研</option>
	</select></td>
  </tr>
  <tr>
    <td align="right" class="title2">年级：</td>
    <td colspan="3" class="within2bg">&nbsp;
        <select name="nj">
	<option>2015级</option>
	<option>2016级</option>
	<option>2017级</option>
	</select></td>
  </tr>
  <tr>
    <td align="right" valign="top" class="title2">描述：</td>
    <td colspan="3" valign="middle" class="within2bg"><input name="ms" type="text" class="input2" value="" size="40" maxlength="40" /></td>
  </tr>
  <tr>
    <td align="right" class="title2">教材：</td>
    <td colspan="3" class="within2bg">&nbsp;
      <a href="/Book_System/static/module/storage/storage001/student/query_book.jsp" class="STYLE1">增加教材</a></td>
  </tr>
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
  <tr>
    <td align="center"><input name="Submit2" type="submit" class="input2" value="确定" />
      &nbsp;&nbsp;
      <input name="Submit3" type="reset" class="input2" value="取消" /></td>
  </tr>
</table>
</form>
<hr width="94%" class="xieyi" />
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table" style="margin-top:10px;">
    <tr>
      <th width="21%" align="center" nowrap="nowrap" class="title2">教材名称</th>
      <th width="10%" align="center" nowrap="nowrap" class="title2">作者</th>
      <th width="21%" align="center" nowrap="nowrap" class="title2">出版社</th>
      <th width="10%" align="center" nowrap="nowrap" class="title2">单价</th>
      <th width="7%" align="center" nowrap="nowrap" class="title2">操作</th>
    </tr>
     <tr align="center"><td colspan="7" class="no_note">暂无信息</td></tr>
</table>

</body>
</html>