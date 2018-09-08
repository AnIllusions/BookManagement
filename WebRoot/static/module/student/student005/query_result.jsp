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
<title>查询结果</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<h3 id="subTitle">查询结果</h3>
	<ul id="button">
		<li><a href="fee_query.htm">书费查询</a></li>
		<li><a href="fee.htm">返回</a></li>
	</ul>
	<form action="" method="post" name="form1" id="form1">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table2">
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note"><h6>
						查询结果:
						<h6></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table" style="margin-top: 10px;">
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note">班级信息：</td>
			</tr>
			<tr>
				<th width="10%" align="center" nowrap="nowrap" class="title2">班级名称</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">所属类别</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">所属层次</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">所属专业</th>
				<th width="5%" align="center" nowrap="nowrap" class="title2">人数</th>
				<th width="40%" align="center" nowrap="nowrap" class="title2">备注</th>
			</tr>
			<tr class="within2bg">
				<td align="center">通信041</td>
				<td align="center">全日制</td>
				<td align="center">本科</td>
				<td align="center">通信工程</td>
				<td align="center">40</td>
				<td align="left">该班级有着优良的学风，全班同学团结一致。</td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table" style="margin-top: 10px;">
			<tr align="center" class="within2bg">
				<td colspan="7" class="no_note">班级成员列表：</td>
			</tr>
			<tr>
				<th width="20%" align="center" nowrap="nowrap" class="title2">学号</th>
				<th width="20%" align="center" nowrap="nowrap" class="title2">姓名</th>
				<th width="10%" align="center" nowrap="nowrap" class="title2">性别</th>
				<th width="20%" align="center" nowrap="nowrap" class="title2">察看详情</th>
				<th width="15%" align="center" nowrap="nowrap" class="title2">选中</th>
			</tr>
			<tr class="within2bg">
				<td align="center">2004081270</td>
				<td align="center">滕景宝</td>
				<td align="center">男</td>
				<td align="center"><a href="student_detail.htm">察看详情</a></td>
				<td align="center" nowrap="nowrap" class="within2bg"><input
					type="radio" name="radio" checked="true" /></td>
			</tr>
			<tr class="within2bg">
				<td align="center">2004081268</td>
				<td align="center">念合振</td>
				<td align="center">男</td>
				<td align="center"><a href="query_result.htm">察看详情</a></td>
				<td align="center" nowrap="nowrap" class="within2bg"><input
					type="radio" name="radio" /></td>
			</tr>
			<tr class="within2bg">
				<td align="center">2004081269</td>
				<td align="center">王洪程</td>
				<td align="center">男</td>
				<td align="center"><a href="query_result.htm">察看详情</a></td>
				<td align="center" nowrap="nowrap" class="within2bg"><input
					type="radio" name="radio" /></td>
			</tr>
			<tr class="within2bg">
				<td align="center">2004081271</td>
				<td align="center">王振山</td>
				<td align="center">男</td>
				<td align="center"><a href="query_result.htm">察看详情</a></td>
				<td align="center" nowrap="nowrap" class="within2bg"><input
					type="radio" name="radio" /></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="3"
			cellspacing="0" id="page">
			<tr>
				<td align="right">共有记录 2条 第 1/1页 <a href="user1_infor.htm">首页</a>
					<a href="user1_infor.htm">上一页</a> <a href="user1_infor.htm">下一页</a>
					<a href="user1_infor.htm">末页</a></td>
			</tr>
		</table>
	</form>
</body>
</html>