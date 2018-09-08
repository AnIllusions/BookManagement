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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="关键词1,关键词2，关键词3,关键词4,……" />
<meta name="Description" content="你网页的简述" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<meta name="Author" content="第五只鼠，email" />
<meta name="Copyright" content="本页版权归第五只鼠所有。All Rights Reserved" />
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
<link href="../../css/leftMenu.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<table border="0" cellspacing="0" cellpadding="0" class="leftMenu">
		<tr onclick="showobj(0)">
			<td><img src="<%=path %>/static/images/yuebao.gif" width="24" height="24" border="0" align="absmiddle" />
			<a href="../main.jsp" target="mainFrame">类别信息</a></td>
		</tr>
		<tr id="list" style="display: none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<td align="left"><a href="./student002/add_type.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>类别添加</a></td>
					</tr>
					<tr>
						<td align="left"><a href="./student002/query_type.jsp"
							target='mainFrame' class="menu" onclick='tdClick(1)'>类别查询</a></td>
					</tr>
				</table></td>
		</tr>
		<tr onclick="showobj(1)">
			<td><img src="<%=path %>/static/images/yuebao.gif" width="24" height="24"
				border="0" align="absmiddle" /><a href="../main.jsp"
				target="mainFrame">层次信息</a></td>
		</tr>
		<tr id="list" style="display: none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<td align="left"><a href="./student006/add_level.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>层次添加</a></td>
					</tr>
					<tr>
						<td align="left"><a href="./student006/query_level.jsp"
							target='mainFrame' class="menu" onclick='tdClick(1)'>层次查询</a></td>
					</tr>
				</table></td>
		</tr>
		<tr onclick="showobj(2)">
			<td><img src="<%=path %>/static/images/lefticon-Stat.gif" width="26"
				height="26" border="0" align="absmiddle" /><a href="../main.jsp"
				target="mainFrame">专业信息</a></td>
		</tr>
		<tr id="list" style="display: none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<td align="left"><a href="./student001/add_major.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>专业添加</a></td>
					</tr>
					<tr>
						<td align="left"><a href="./student001/query_major.jsp"
							target='mainFrame' class="menu" onclick='tdClick(1)'>专业查询</a></td>
					</tr>
				</table></td>
		</tr>
		<tr onclick="showobj(3)">
			<td><img src="<%=path %>/static/images/lefticon-Stat2.gif" width="26"
				height="26" border="0" align="absmiddle" /><a href="../main.jsp"
				target="mainFrame">班级信息</a></td>
		</tr>
		<tr id="list" style="display: none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<td align="left"><a href="./student003/add_class.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>班级添加</a></a></td>
					</tr>
					<tr>
						<td align="left"><a href="./student003/query_class.jsp"
							target='mainFrame' class="menu" onclick='tdClick(1)'>班级查询</a></a></td>
					</tr>
				</table></td>
		</tr>

		<tr onclick="showobj(4)">
			<td><img src="<%=path %>/static/images/lefticon-Stat2.gif" width="26"
				height="26" border="0" align="absmiddle" /><a href="../main.jsp"
				target="mainFrame">学生信息</a></td>
		</tr>
		<tr id="list" style="display: none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<td align="left"><a href="./student004/add_student.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>学生添加</a></a></td>
					</tr>
					<tr>
						<td align="left"><a href="./student004/query_student.jsp"
							target='mainFrame' class="menu" onclick='tdClick(1)'>学生查询</a></a></td>
					</tr>
				</table></td>
		</tr>

		<tr onclick="showobj(5)">
			<td><img src="<%=path %>/static/images/lefticon-Stat2.gif" width="26"
				height="26" border="0" align="absmiddle" /><a href="../main.jsp"
				target="mainFrame">书费管理</a></td>
		</tr>
		<tr id="list" style="display: none;">
			<td><table width="100%" border="0" cellpadding="0"
					cellspacing="0" class="leftMenu2">
					<tr>
						<td align="left"><a href="./student005/pay_fee_query.jsp"
							target='mainFrame' class="menu" onclick='tdClick(0)'>书费交纳</a></a></td>
					</tr>
					<tr>
						<td align="left"><a href="./student005/fee_query_query.jsp"
							target='mainFrame' class="menu" onclick='tdClick(1)'>书费查询</a></a></td>
					</tr>
					<tr>
						<td align="left"><a
							href="./student005/fee_statistic_query.jsp" target='mainFrame'
							class="menu" onclick='tdClick(2)'>书费统计</a></a></td>
					</tr>
				</table></td>
		</tr>
	</table>
</body>
</html>
