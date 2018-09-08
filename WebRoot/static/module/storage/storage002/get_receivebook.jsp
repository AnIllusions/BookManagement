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
<h3 id="subTitle">入库管理--入库</h3>

 <form method="post" action="<%=path%>/rukuServlet">
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    
    <tr>
        <td width="20%" align="right" class="title2">(请输入)ISBN：</td>
        <td class="within2bg">&nbsp;
            <input name="isbn" type="text"  class="input2" value="<%=request.getAttribute("isbn")%>"/>
		</td>
    </tr>
    
</table>
<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
      <td width="20%" align="right" class="title2">(请选择)供应商：</td>
      <td class="within2bg">&nbsp; 
         <select name="supplier">
                 <option selected="selected" >新华书店</option>
                 <option selected="selected">图书馆</option>
                 <option selected="selected" >省委</option>
                 <option selected="selected">请选择</option>
             </select>
      </td>
    </tr>
    
    <tr>
        <td width="20%" align="right" class="title2">(请输入)教材数量：</td>
        <td class="within2bg">&nbsp;     
        <input name="amount" type="text" class="input2" />
	
		</td>
    </tr>
    
    <tr>
      <td width="20%" align="right" class="title2">(请输入)架位：</td>
        <td class="within2bg">&nbsp;     
        <input name="jiawei" type="text" class="input2" />
		
		</td>
    </tr>
    <tr>
      <td width="20%" align="right" class="title2">备注：</td>
        <td class="within2bg">&nbsp;     
        <textarea name="remark"   rows="2" cols="17"></textarea>
		
		</td>
    </tr>
    <tr>
      <td width="20%" align="right" class="input2" > </td>
      <td class="within2bg">&nbsp;
         <input name="Submit3" type="submit" class="input2" value="入库" />   
		<input name="Submit3" type="reset" class="input2" value="重置"/>
      </td>
    </tr>
    
</table>
</form>
<HR>

<table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
        <th colspan="8" class="p4"><span class="title2">以下为您所得到教材的详细信息</span></th>
    </tr>
    <tr>
        <td width="15%" align="center" class="title2">ISBN</td>
        <td width="15%" align="center" class="title2">教材名</td>
        <td width="8%" align="center" class="title2">作者</td>
        <td width="15%" align="center" class="title2">出版社</td>
        <td width="10%" align="center" class="title2">出版日期</td>
        <td width="8%" align="center" class="title2">版次</td>
        <td width="5%" align="center" class="title2">单价</td>
        <td width="5%" align="center" class="title2">选择</td>
    </tr>
    <%int n=Integer.parseInt(request.getAttribute("n").toString()) ;
      for(int i=0;i<n;i++){%>
   <tr><td><%=request.getAttribute("isbn"+i) %></td>
<td><%=request.getAttribute("name"+i) %></td>
<td><%=request.getAttribute("author"+i) %></td>
<td><%=request.getAttribute("publish"+i) %></td>
<td><%=request.getAttribute("publishdate"+i) %></td>
<td><%=request.getAttribute("version"+i) %></td>
<td><%=request.getAttribute("price"+i) %></td>

<td><input type="radio"/></td>
</tr>
   <%} %> 
</table>


</body>
</html>