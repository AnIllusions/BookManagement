<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<script language="JavaScript">
//菜单点击用方法--隐藏
function hideAll() 
{
    if (document.all.list.length==null)
    {
        list.style.display="none";
    }
    else
    {
        for(i=0;i<list.length;i++) 
        {
            list[i].style.display="none";
        }
    }
}

//菜单点击用方法--显示
function showobj(num) 
{
    if (document.all.list.length==null)
    {
        if (list.style.display=="none") 
        {
            hideAll();
            list.style.display="inline";
        }
        else 
        {
            list.style.display="none";
        }
    }
    else
    {
        if (list[num].style.display=="none") 
        {
            hideAll();
            list[num].style.display="inline";
        }
        else 
        {
            list[num].style.display="none";
        }
    }
}


//点击后，导航栏中图标的变化
function tdClick(obj)
{
  for (var i=0; i<document.all.tdID.length; i++)
  {
    if (i==obj)
      eval("document.all.tdID["+i+"].src='imgages/list.gif'");
    else
      eval("document.all.tdID["+i+"].src='imgages/arrow.gif'");
  }
}

</script>
<title>无标题文档</title>
<link href="${pageContext.request.contextPath}/static/css/leftMenu.css"
	rel="stylesheet" type="text/css" />
</head>
<body>
	<table border="0" cellspacing="0" cellpadding="0" class="leftMenu">
		<tr onclick="showobj(0)">
			<td><img src="../../images/lefticon-Stat.gif" width="26"
				height="26" border="0" align="absmiddle" /><a href="../main.jsp"
				target="mainFrame">教材管理</a></td>
		</tr>
		<tr id="list" style="display:none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<!--  -->
						<td align="left"><a href="./book001/book_add.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>教材添加</a></td>
					</tr>
					<tr>
						<!-- ./book001/book_list.jsp -->
						<td align="left"><a href="<%=path%>/TextBookListServlet?name=all&author=all&publish=all"
							target='mainFrame' class="menu" onclick='tdClick(1)'>教材查询</a></td>
					</tr>
				</table></td>
		</tr>

		<tr onclick="showobj(1)">
			<td><img src="../../images/yuebao.gif" width="24" height="24"
				border="0" align="absmiddle" /><a href="../main.jsp"
				target="mainFrame">供应商管理</a></td>
		</tr>
		<tr id="list" style="display:none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<td align="left"><a href="./book002/supplier_add.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>供应商添加</a></td>
					</tr>
					<tr><!-- ./book002/supplier_list.jsp -->
						<td align="left"><a href="<%=path %>/SupplierListServlet?name=all"
							target='mainFrame' class="menu" onclick='tdClick(0)'>供应商查询</a></td>
					</tr>
				</table></td>
		</tr>

		<tr onclick="showobj(2)">
			<td><img src="../../images/lefticon-Stat2.gif" width="26"
				height="26" border="0" align="absmiddle" /><a href="../main.jsp"
				target="mainFrame">函授站管理</a></td>
		</tr>
		<tr id="list" style="display:none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<td align="left"><a href="./book003/station_add.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>函授站添加</a></td>
					</tr>
					<tr><!-- ./book003/station_list.jsp  -->
						<td align="left"><a href="<%=path%>/StationListServlet?name=all"
							target='mainFrame' class="menu" onclick='tdClick(0)'>函授站查询</a></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>