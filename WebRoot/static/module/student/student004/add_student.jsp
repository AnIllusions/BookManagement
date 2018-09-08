<%@page import="com.ambow.model.BJi"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.ambow.utils.HibernateUtil"%>
<%@page import="com.ambow.model.Category"%>
<%@page import="com.ambow.model.Level"%>
<%@page import="com.ambow.model.Major"%>
<%@page import="org.hibernate.Session"%>
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
<title>添加学生</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
$( function() {
    $( "#birthDate" ).datepicker({ dateFormat: 'yy-mm-dd',
    	 changeYear: true,
         yearRange:"1940:2018", 
         changeMonth:true,
         buttonText: "Select date"

         });
  } );
</script>
<script>
	function yan(){
		var tel = document.getElementById('tel').value;
		if(frm.number.value == ""){
			alert("学号不能为空！");
			document.frm.number.focus();
			return (false);
		}else if(frm.name.value == ""){
			alert("姓名不能为空！");
			document.frm.name.focus();
			return (false);
		}else if(frm.birthDate.value == ""){
			alert("出生日期不能为空！");
			document.frm.birthDate.focus();
			return (false);
		}else if(frm.nativePlace.value == ""){
			alert("籍贯不能为空！");
			document.frm.nativePlace.focus();
			return (false);
		}else if(frm.address.value == ""){
			alert("地址不能为空！");
			document.frm.address.focus();
			return (false);
		}else if(frm.tel.value == ""){
			alert("电话不能为空！");
			document.frm.tel.focus();
			return (false);
		}else if(!(/^1[34578]\d{9}$/.test(tel))){
			alert("不是完整的11位手机号或者正确的手机号前七位");
			document.frm.tel.focus();
			return (false);
		}
	}
</script>
</head>

<body>
	<h3 id="subTitle">添加学生</h3>
	<ul id="button">
		<li><a href="../../main.jsp">返回</a></li>
	</ul><br />
	<form action="<%=path %>/StudentServlet?status=add" method="post" name="frm" id="form1" onsubmit="return yan()">
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="table">
			<tr>
				<th colspan="4" class="p4"><span class="title2"><h6>填写学生信息:</h6></span></th>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">学号：</td>
				<td width="80%" class="within2bg"><input name="number"
					type="text" class="input2" id="number"/></td>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">姓名：</td>
				<td width="80%" class="within2bg"><input name="name"
					type="text" class="input2" id="name"/></td>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">性别：</td>
				<td width="80%" class="within2bg"><input name="sex"
					type="radio" class="input2" value="男" checked="ok"/>男 <input name="sex"
					type="radio" class="input2" value="女"/>女</td>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">出生日期：</td>
				<td width="80%" class="within2bg"><input name="birthDate"
					type="text" class="input2" id="birthDate" readonly="readonly"/></td>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">籍贯：</td>
				<td width="80%" class="within2bg"><input name="nativePlace"
					type="text" class="input2" size="40" id="nativePlace"/></td>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">家庭住址：</td>
				<td width="80%" class="within2bg"><input name="address"
					type="text" class="input2" size="40" id="address"/></td>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">联系电话：</td>
				<td width="80%" class="within2bg"><input name="tel"
					type="text" class="input2" id="tel"/></td>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">所属类别：</td>
				<td width="80%" colspan="3" class="within2bg"><select
					name="categoryName">
						<option selected="selected">请选择类别</option>
						<%
							Session ses = HibernateUtil.getSession();
							List<Category> cList = ses.createQuery("from Category").list();
							HibernateUtil.clossSession();
							for (int k = 0; k < cList.size(); k++) {
						%>
						<option value="<%=cList.get(k).getName()%>"><%=cList.get(k).getName()%></option>
						<%
							}
						%>
				</select>
			</tr>
			<tr>
				<td width="20%" align="right" class="title2">所属层次：</td>
				<td width="80%" colspan="3" class="within2bg"><select
					name="levelName">
						<option selected="selected">请选择层次</option>
						<%
							ses = HibernateUtil.getSession();
							List<Level> lList = ses.createQuery("from Level").list();
							HibernateUtil.clossSession();
							for (int k = 0; k < lList.size(); k++) {
						%>
						<option value="<%=lList.get(k).getName()%>"><%=lList.get(k).getName()%></option>
						<%
							}
						%>
				</select>
			</tr>
			<tr>
				<td align="right" class="title2">所属专业：</td>
				<td colspan="3" class="within2bg"><select name="majorName">
						<option selected="selected">请选择专业</option>
						<%
							ses = HibernateUtil.getSession();
							List<Major> mList = ses.createQuery("from Major").list();
							HibernateUtil.clossSession();
							for (int k = 0; k < mList.size(); k++) {
						%>
						<option value="<%=mList.get(k).getName()%>"><%=mList.get(k).getName()%></option>
						<%
							}
						%>
				</select>
			</tr>
			<tr>
				<td align="right" class="title2">年级：</td>
				<td colspan="3" class="within2bg"><select name="gradeName">
						<option selected="selected">请选择年级</option>
						<option>2004</option>
						<option>2005</option>
						<option>2006</option>
						<option>2007</option>
						<option>2008</option>
						<option>2009</option>
						<option>2010</option>
						<option>2011</option>
						<option>2012</option>
						<option>2013</option>
						<option>2014</option>
						<option>2015</option>
						<option>2016</option>
						<option>2017</option>
						<option>2018</option>
						<option>2019</option>
						<option>2020</option>
				</select></td>
			</tr>
			<tr>
				<td align="right" class="title2">所属班级：</td>
				<td colspan="3" class="within2bg"><select name="className">
						<option selected="selected">请选择班级</option>
						<%
							ses = HibernateUtil.getSession();
							List<BJi> bList = ses.createQuery("from BJi").list();
							HibernateUtil.clossSession();
							for (int k = 0; k < bList.size(); k++) {
						%>
						<option value="<%=bList.get(k).getName()%>"><%=bList.get(k).getName()%></option>
						<%
							}
						%>
				</select>
			</tr>
			<tr>
				<td align="right" class="title2">备注：</td>
				<td colspan="3" class="within2bg"><textarea name="remark"
						cols="100" class="textarea3"></textarea></td>
			</tr>
		</table>
		<table width="90%" border="0" align="center" cellpadding="0"
			cellspacing="0" class="yesno">
			<tr>
				<td align="center"><input name="Submit2" type="submit"
					class="bevel" value="确定" /> <input name="Submit3" type="reset"
					class="bevel" value="取消" /></td>
			</tr>
		</table>
	</form>
</body>
</html>