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
<title>查询专业</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
<script>
	function yan(){
		if(frm.majorName.value == ""){
			alert("专业名称不能为空！");
			document.frm.majorName.focus();
			return (false);
		}
	}

</script>
</head>

<body>
	<h3 id="subTitle">查询专业</h3>
	<ul id="button">
		<li><a href="../../main.jsp">返回</a></li>
	</ul>
	<form action="<%=path %>/MajorServlet?status=query" method="post" name="frm" onsubmit="return yan()">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr>
				<td width="20%" align="left" nowrap="nowrap">按专业名称查询：</td>
				<td nowrap="nowrap"><input name="majorName" type="text"
					class="input2" id="majorName"/> <input name="Submit" type="submit"
					class="buttonInp" value="查 询" /></td>
			</tr>
		</table>
		</table>
	</form>
</body>
</html>