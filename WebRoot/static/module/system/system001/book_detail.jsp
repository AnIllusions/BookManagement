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
<title>菜单管理</title>
<link href="../../../css/css.css" rel="stylesheet" type="text/css" />
</head>

<body>
<h3 id="subTitle">书藉详情</h3>

<form name="form1" method="post" action="">
  <table width="90%" border="0" align="center" cellpadding="0" cellspacing="0" class="table">
    <tr>
      <th valign="top" colspan="4" align="center" class="title2">书藉基本信息</th>
    </tr>
    <tr>
      <td width="19%" align="center" class="title2"><div align="right">ISBN：</div></td>
      <td width="81%" class="within2bg">&nbsp;</td>
    </tr>
  <tr>
  <td width="19%" align="center" class="title2"><div align="right">书名：<br />
  </div></td>
      <td width="81%" class="within2bg">&nbsp;</td>
  </tr>
  <tr>
  <td width="19%" align="center" class="title2"><div align="right">作者：<br />
  </div></td>
      <td width="81%" class="within2bg">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" class="title2"><div align="right">版次：<br />
    </div></td>
    <td class="within2bg">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" class="title2"><div align="right">出版社：<br />
    </div></td>
    <td class="within2bg">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" class="title2"><div align="right">出版时间：
    </div></td>
    <td class="within2bg">&nbsp;</td>
  </tr>
  <tr>
    <td align="center" class="title2"><div align="right">单价：</div></td>
    <td class="within2bg">&nbsp;</td>
  </tr>
  <tr>
    <td class="within2bg"><div align="right">备注：</div></td>
    <td class="within2bg"><label></label></td>
  </tr>
  </table>
  <table width="90%"  border="0" align="center" cellpadding="0" cellspacing="0" class="yesno">
        <tr>
           <td align="center"><a href="javascript:history.back()">返回</a></td>
        </tr>
  </table>
</form>
</body>
</html>