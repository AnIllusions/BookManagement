<%@page import="com.ambow.value_of.Stock_Supplier_TextBookPayment"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="关键词1,关键词2，关键词3,关键词4,……" />
<meta name="Description" content="你网页的简述" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<title>菜单管理</title>
<link href="${pageContext.request.contextPath }/static/css/css.css"
	rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">报销查询－按供应商</h3>
	<ul id="button">


		<li><a href="user5_list_del_name.htm"></a></li>

	</ul>
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table2">
		<form action="<%=path %>/StockPaymentListServlet" method="post" name="form2" id="form2">
			<tr>
				<td nowrap="nowrap">输入供应商名：</td>
				<td nowrap="nowrap">
				<input name="name" type="text" class="transparent" /> 
				<select name = "payment">
					<option value="all">所有</option>
					<option value="1">已报销 </option>
					<option value="0">未报销</option>
				</select>
				<!-- <input name="payment" type="radio"	class="transparent" value="0" />未报销 
				<input name="payment" type="radio" class="transparent" value="1" />已报销 
				<input	name="payment" type="radio" class="transparent" value="all" />所有 -->
				<input	name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
			</tr>
		</form>
	</table>
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table">
		<tr>
			<th width="17%" align="center" nowrap="nowrap" class="title2">书籍</th>
			<th width="15%" align="center" nowrap="nowrap" class="title2">数目</th>
			<th width="37%" align="15%" nowrap="nowrap" class="title2">供应商</th>
			<th width="19%" align="15%" nowrap="nowrap" class="title2">入库时间</th>
			<th width="12%" align="15%" nowrap="nowrap" class="title2">当前状态</th>
		</tr>
		<%
	    	List<Stock_Supplier_TextBookPayment> bookPayments = (List<Stock_Supplier_TextBookPayment>)request.getAttribute("bookPayments");
    		if(bookPayments.size()>0){
	    	for(int i = 0; i < bookPayments.size();i ++){
    		%>
		<tr class="within2bg">
			<td align="center" class="font_hilite"><%=bookPayments.get(i).getTname() %></td>
			<td align="center"><%=bookPayments.get(i).getAmount() %></td>
			<td align="center" class="font_hilite"><span class="title2"><%=bookPayments.get(i).getSname() %></span></td>
			<td align="center"><span class="font_hilite"><%=bookPayments.get(i).getReceive_date() %></span></td>
			<td align="center">
					<%if(bookPayments.get(i).getPayment()==1){%>
					<%="已报销" %>
					<%}else{ %>
					<%="未报销" %>
					<%} %>
			</td>
		</tr>
		<%}}
    		else{
		%>
		
		<tr align="center" class="within2bg">
			<td colspan="6" class="no_note">没有符合条件的记录</td>
		</tr>
		<%} %>
	</table>
	<table width="90%" border="0" align="center" cellpadding="3"
		cellspacing="0" id="page">
		<tr>
			<td height="35" align="right">共有记录 2条 第 1/1页 <a href="#">首页</a>
				<a href="#">上一页</a> <a href="#">下一页</a> <a href="#">末页</a> 到 <input
				name="textfield" type="text" class="input2" size="5" /> 页 <input
				name="Submit6" type="submit" class="buttonInp" value="GO" /></td>
		</tr>
	</table>
</body>
</html>