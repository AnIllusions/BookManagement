<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="Content-Language" content="zh-CN" />
<meta name="Keywords" content="å³é®è¯1,å³é®è¯2ï¼å³é®è¯3,å³é®è¯4,â¦â¦" />
<meta name="Description" content="ä½ ç½é¡µçç®è¿°" />
<meta name="Robots" content="All" />
<meta name="Generator" content="Dreamweaver" />
<meta name="Author" content="ç¬¬äºåªé¼ ï¼email" />
<meta name="Copyright" content="æ¬é¡µçæå½ç¬¬äºåªé¼ ææãAll Rights Reserved" />
<script language="JavaScript">
//èåç¹å»ç¨æ¹æ³--éè
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

//èåç¹å»ç¨æ¹æ³--æ¾ç¤º
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


//ç¹å»åï¼å¯¼èªæ ä¸­å¾æ çåå
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
<title>æ æ é¢ææ¡£</title>
<link href="../css/leftMenu.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table border="0" cellspacing="0" cellpadding="0" class="leftMenu">
        <tr onclick="showobj(0)" >
            <td><img src="../images/lefticon-Stat.gif" width="26" height="26" border="0" align="absmiddle" /><a href="main.jsp" target="mainFrame">ä¸çº§èå</a></td>
        </tr>
        <tr id="list" style="display:none;">
            <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="leftMenu2">
                <tr>
                    <td align="left"><a href="main.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'>äºçº§èå</a></td>
                </tr>
                <tr>
                    <td align="left"><a href="main.jsp" target='mainFrame' class="menu" onclick='tdClick(1)'>äºçº§èå</a></td>
                </tr>
                <tr>
                    <td align="left"><a href="main.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'>äºçº§èå</a><a href="yuebao/xiaokong.jsp" target='mainFrame' class="menu" onclick='tdClick(1)'></a></td>
                </tr>

            </table></td>
        </tr>
        <tr onclick="showobj(1)">
            <td><img src="../images/yuebao.gif" width="24" height="24" border="0" align="absmiddle" /><a href="main.jsp" target="mainFrame">ä¸çº§èå</a></td>
        </tr>
        <tr id="list" style="display:none;">
            <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="leftMenu2">
                <tr>
                    <td align="left"><a href="main.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'>äºçº§èå</a><a href="tubiao/huizong.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'></a></td>
                </tr>
               <tr>
                    <td align="left"><a href="main.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'>äºçº§èå</a><a href="tubiao/fenxi.jsp" target='mainFrame' class="menu" onclick='tdClick(2)'></a></td>
              </tr>
            </table></td>
        </tr>
        <tr onclick="showobj(2)">
            <td><img src="../images/lefticon-Stat2.gif" width="26" height="26" border="0" align="absmiddle" /><a href="main.jsp" target="mainFrame">ä¸çº§èå</a></td>
        </tr>
        <tr id="list" style="display:none;">
            <td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="leftMenu2">
                <tr>
                    <td align="left"><a href="main.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'>äºçº§èå</a><a href="fenxi/dangan.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'></a></td>
                </tr>
               <tr>
                    <td align="left"><a href="main.jsp" target='mainFrame' class="menu" onclick='tdClick(0)'>äºçº§èå</a><a href="fenxi/chengjiao.jsp" target='mainFrame' class="menu" onclick='tdClick(2)'></a></td>
              </tr>
            </table></td>
        </tr>
</table>
</body>
</html>
