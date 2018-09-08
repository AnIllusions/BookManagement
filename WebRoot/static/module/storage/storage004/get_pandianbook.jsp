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
<title>教材管理系统</title>
<link href="<%=path%>/static/css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 id="subTitle">盘点调整</h3>
<form method="post" action="<%=path%>/tiaozhengServlet">
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <td width="20%" align="right" class="title2">架位：</td>
		<td class="within2bg">&nbsp;
          <input name="tzjiawei" type="text" class="input2" value="<%=request.getAttribute("jw10") %>"/>(*)
	</td>
     
        </tr>
	<tr>
        <td width="20%" align="right" class="title2">盘点数量：</td>
		<td class="within2bg">&nbsp;
           <input name="tzamount" value="" type="text" class="input2" />(*)
	</td>
    </tr>
	<tr>
        <td width="20%" align="right" class="title2">原因：</td>
		<td class="within2bg">&nbsp;
           <textarea name="tzreason"  value="" rows="2" cols="17"></textarea></td>
	</tr>
   <tr>
     <th colspan="8" class="p4"><span class="title2">带(*)的为必填的内容</span></th>
   </tr>
    
</table>
 <center>
  <input name="textfield" type="submit" class="input2" value="调整"/> 
  <input name="textfield" type="reset" class="input2" value="重置"/>

</center>

 </form>

<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="10" class="p4"><span class="title2">以下为您所得到教材的详细信息</span></th>
    </tr>
	<tr>
        <td width="8%" align="center" class="title2">架位</td>
        <td width="15%" align="center" class="title2">ISBN</td>
        <td width="20%" align="center" class="title2">教材名</td>
        <td width="8%" align="center" class="title2">作者</td>
        <td width="15%" align="center" class="title2">出版社</td>
        <td width="10%" align="center" class="title2">出版日期</td>
        <td width="8%" align="center" class="title2">版次</td>
        <td width="5%" align="center" class="title2">单价</td>
        <td width="5%" align="center" class="title2">数量</td>
        <td width="5%" align="center" class="title2">选择</td>
    </tr>
    <%int n=Integer.parseInt(request.getAttribute("n").toString());
      for(int i=0;i<n;i++){ %>
    <tr>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("jw1"+i) %></td>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("isbnk1"+i) %></td>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("jcm1"+i) %></td>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("zz1"+i) %></td>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("cbs1"+i) %></td>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("cbrq1"+i) %></td>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("bc1"+i) %></td>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("dj1"+i) %></td>
        <td class="within2bg" align="center" >&nbsp;<%=request.getAttribute("sl1"+i) %></td>
        <td class="within2bg">&nbsp;
                  <input type="checkbox">  
               </td>
    </tr>
    <%} %>
</table>
</body>
</html>