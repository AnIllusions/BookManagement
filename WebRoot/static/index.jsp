<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<%if(session.getAttribute("denglu")==null ){
System.out.println("Book_System/static/index.管理员没有登录");
     response.sendRedirect("/Book_System/static/login.jsp");
}%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="å³é®è¯1,å³é®è¯2ï¼å³é®è¯3,å³é®è¯4,â¦â¦" />
<meta name="Description" content="ä½ ç½é¡µçç®è¿°" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<meta name="Author" content="ç¬¬äºåªé¼ ï¼email" />
<meta name="Copyright" content="æ¬é¡µçæå½ç¬¬äºåªé¼ ææãAll Rights Reserved" />
<script language="JavaScript">
function C_leftshow()
{	
   	menu_frm.cols="201,*";	
}
function C_lefthidden()
{
	menu_frm.cols="0,*";
}
</script>
<title>库存管理主页</title>
</head>

<frameset rows="114,*" framespacing="0" border="0">
    <frame src="static/module/top.jsp" frameborder="no" scrolling="no" name="topFrame" noresize="noresize">
    <frameset rows="*,18">
    
    
        <frameset name="menu_frm" cols="201,*">
            <frame src="static/module/book/book_left.jsp" name="leftFrame" frameborder="no" scrolling="no" noresize="noresize">
            <frameset cols="*,6">
                <frame src="static/module/main.jsp" frameborder="no" scrolling="yes" name="mainFrame">
                <frame src="static/module/borderR.jsp" frameborder="no" scrolling="no" noresize="noresize" name="borderRFrame">
            </frameset>
            
        </frameset>
        
        <frame src="static/module/copyright.jsp" frameborder="no" scrolling="no" noresize="noresize" name="copyrightFrame">
    </frameset>
    
</frameset>
<noframes><body>
</body>
</noframes></html>