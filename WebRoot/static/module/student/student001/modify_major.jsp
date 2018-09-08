<%@page import="com.ambow.model.Major"%>
<%@page import="com.ambow.service.impl.MajorServiceImpl"%>
<%@page import="com.ambow.service.MajorService"%>
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
<title>修改专业信息</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
<script>
	function yan(){
		if(frm.majorName.value == ""){
			alert("专业名称不能为空！");
			document.frm.majorName.focus();
			return (false);
		}else if(frm.remark.value == ""){
			alert("备注不能为空！");
			document.frm.remark.focus();
			return (false);
		}
	}
</script>
</head>

<body>
	<h3 id="subTitle">修改专业信息</h3>
	<ul id="button">
		<li><a href="javascript:history.back()">返回</a></li>
	</ul><br />
	<form action="<%=path %>/MajorServlet?status=update" method="post" name="frm" onsubmit="return yan()">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table">
			<tr>
				<th colspan="4" class="p4"><span class="title2"><h6>修改专业信息：</h6></span></th>
			</tr>
			<%Integer id = Integer.valueOf(request.getParameter("id"));
			  MajorService mService = new MajorServiceImpl();
			  Major major = mService.queryById(Major.class,id);
			%>
			<tr>
				<td width="20%" align="right" class="title2">专业名称：</td>
				<td width="80%" class="within2bg"><input name="majorName"
					type="text" class="input2" value="<%=major.getName() %>" id="majorName"/></td>
			</tr>
			<tr>
				<td align="right" class="title2">备注：</td>
				<td colspan="3" class="within2bg"><textarea name="remark"
						cols="100" class="textarea3" id="remark"><%=major.getRemark()%>
				</textarea></td>
			   <td><input type="hidden" name="id" value="<%=major.getId()%>"></input></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="yesno">
			<tr>
				<td align="center"><input name="Submit2" type="submit"
					class="bevel" value="修改" /> <input name="Submit3" type="reset"
					class="bevel" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>