<%@page import="com.ambow.value_of.StockRecever_Supplier_TextBook"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
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
<link href="${pageContext.request.contextPath}/static/css/css.css"
	rel="stylesheet" type="text/css" />
<!-- <link href="../../../css/css.css" rel="stylesheet" type="text/css" /> -->
</head>

<body>
	<h3 id="subTitle">入库报销－按供应商</h3>
	<form action="<%=path%>/StockReceiveServlet" method="post" name="form2"
		id="form2">
		<ul id="button">
			<li><a href="user3_new.htm">报销</a></li>
			<li></li> 预报金额：<%
				List<StockRecever_Supplier_TextBook> opss = (List<StockRecever_Supplier_TextBook>) request
						.getAttribute("suppliers");
				double sum = 0;
				for (int i = 0; i < opss.size(); i++) {
					sum = sum + opss.get(i).getPrice() * opss.get(i).getAmount();
				}
			%>
			<%=sum%>
		</ul>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">

			<tr>
				<td nowrap="nowrap">按供应商名查询：</td>
				<td nowrap="nowrap"><input type="text" name="supplier" /> <input
					name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
			</tr>
		</table>
	</form>
	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table">


		<form action="" method="post" name="form1" id="form1">
			<tr>
				<th width="10%" align="center" nowrap="nowrap" class="title2">操作</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">书籍</th>
				<th width="13%" align="center" nowrap="nowrap" class="title2">数目</th>
				<th width="24%" align="center" nowrap="nowrap" class="title2">供应商</th>
				<th width="18%" align="center" nowrap="nowrap" class="title2">入库时间</th>
				<th width="20%" align="15%" nowrap="nowrap" class="title2">总金额</th>
			</tr>
			<%
				List<StockRecever_Supplier_TextBook> ops = (List<StockRecever_Supplier_TextBook>) request
						.getAttribute("suppliers");
				for (int i = 0; i < ops.size(); i++) {
			%>
			<tr class="within2bg">
				<td align="center" class="font_hilite"><input name="    "
					type="checkbox" /></td>
				<td align="center"><%=ops.get(i).getBookName()%></td>
				<td align="center"><%=ops.get(i).getAmount()%></td>
				<td align="center"><%=ops.get(i).getSupplierName()%></td>
				<td align="center">
				<span class="font_hilite"><%=ops.get(i).getRdate()%></span></td>
				<td align="center" class="font_hilite"><%=(ops.get(i).getAmount() * ops.get(i).getPrice()) %>
				</td>
			</tr>
			<%
				}
			%>

			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note">没有符合条件的记录</td>
			</tr>
		</form>
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