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
        <tr onclick="showobj(0)" >
            <td><img src="../../images/lefticon-Stat.gif" width="26" height="26" border="0" align="absmiddle" /><a href="../main.jsp" target="mainFrame">个人设置</a></td>
        </tr>
        <tr id="list" style="display:none;">
            <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="leftMenu2">
                <tr>
                    <td align="left"><a href="./person001/user_detail.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'>个人信息</a></td>
                </tr>
                <tr>
                    <td align="left"><a href="./person001/psw_modify.jsp" target='mainFrame' class="menu" onclick='tdClick(1)'>密码修改</a></td>
                </tr>    
            </table></td>
        </tr>

       
       
</table>
</body>
</html>
