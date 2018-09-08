<%@page import="com.ambow.model.Operator"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
  String path = request.getContextPath();
  String basePath =
      request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
          + path + "/";
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

<link href="${pageContext.request.contextPath}/static/css/css.css"
	rel="stylesheet" type="text/css" />
<%-- <script type="JavaScript" src="${pageContext.request.contextPath}/static/js/page.js"></script>
<script  type="text/javascript">  
    function s(){
    	 var fun = init; //引用函数  
    	 fun();  
    }
 </script>  
 --%>
<body onload="init()">
	<h3 id="subTitle">用户管理</h3>

	<ul id="button">
		<li><a
			href="<%=path %>/static/module/system/system002/user_add.jsp">新 建</a></li>
	</ul>

	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table2">
		<form action="<%=path%>/AdminListServlet" method="post" name="form2"
			id="form2">
			<tr>
				<td width="90" align="center" nowrap="nowrap">查询：</td>
				<td nowrap="nowrap">&nbsp; <select name="role">
						<option value="库存管理员">库存管理员</option>
						<option value="学生管理员">学生管理员</option>
						<option value="教材管理员">教材管理员</option>
						<option value="分管领导">分管领导</option>
				</select> <input name="Submit" type="submit" class="buttonInp" value="查 询" /></td>
			</tr>
		</form>


	</table>

	<table width="90%" border="0" align="center" cellpadding="0"
		cellspacing="0" class="table" style="margin-top:10px;" id="tableList">
		<thead>
			<tr>
				<th width="14%" align="center" nowrap="nowrap" class="title2">姓名</th>
				<th width="14%" align="center" nowrap="nowrap" class="title2">帐号</th>
				<th width="18%" align="center" nowrap="nowrap" class="title2">电话<br></th>
				<th width="11%" align="center" nowrap="nowrap" class="title2">职位</th>
				<th width="27%" align="center" nowrap="nowrap" class="title2">备注</th>
				<th width="16%" align="center" nowrap="nowrap" class="title2">操作</th>
			</tr>
		</thead>

		<tbody id="group_one">
			<%
			  List<Operator> ops = (List<Operator>) request.getAttribute("ops");
			  for (int i = 0; i < ops.size(); i++) {
			%>
			<tr class="within2bg">
				<td align="center" nowrap><%=ops.get(i).getName() %></td>
				<td align="center" nowrap><%=ops.get(i).getAccount()  %></td>
				<td align="center" nowrap><%=ops.get(i).getTel() %><br></td>
				<td align="center" nowrap><%=ops.get(i).getPosition() %></td>
				<td align="center" nowrap><%=ops.get(i).getRemark() %></td>
				<td align="center" nowrap>
					<%-- <jsp:forward page="user_modify.jsp?i=i">修改</jsp:forward> --%>
					<a
					href="<%=path %>/static/module/system/system002/user_modify.jsp?
				name=<%=ops.get(i).getName() %>&
				account=<%=ops.get(i).getAccount()  %>&
				tel=<%=ops.get(i).getTel() %>&
				position=<%=ops.get(i).getPosition() %>&
				remark=<%=ops.get(i).getRemark() %>&	
				id=<%=ops.get(i).getId() %>&
				password=<%=ops.get(i).getPassword() %>	
				">修改</a>
					&nbsp;&nbsp;&nbsp;<a
					href="<%=path %>/DeleteAllServlet?name=user&id=<%=ops.get(i).getId() %>">删除</a>
				</td>
			</tr>
			<%
			  }
			%>
		</tbody>
	</table>

	<table width="90%" border="0" align="center" cellpadding="3"
		cellspacing="0">
		<tr style="height: 40px">
			<td align="right">
				 共有记录：<%=ops.size()%>条&nbsp;每页5条&nbsp;
				<a href="#" onclick="page.firstPage();">首页</a> <a href="#"
				onclick="page.prePage();">上一页</a> <a href="#"
				onclick="page.nextPage();">下一页</a> <a href="#"
				onclick="page.lastPage();">尾页</a> 
				<span id="pageindex"></span>

			</td>
		</tr>
	</table>
</body>
<script language="JavaScript">
/* js分页类
* @param iAbsolute 每页显示记录数
* @param sTableId 分页表格属性ID值，为String
* @param sTBodyId 分页表格TBODY的属性ID值,为String,此项为要分页的主体内容
*/
//页面初始化
function init() {
       page = new Page(5,'tableList','group_one');
}
   
function Page(iAbsolute,sTableId,sTBodyId) {
       this.absolute = iAbsolute; //每页最大记录数
       this.tableId = sTableId;
       this.tBodyId = sTBodyId;
       this.rowCount = 0;//记录数
       this.pageCount = 0;//页数
       this.pageIndex = 0;//页索引
       this.__oTable__ = null;//表格引用
       this.__oTBody__ = null;//要分页内容
       this.__dataRows__ = 0;//记录行引用
       this.__oldTBody__ = null;
       this.__init__(); //初始化;
     }
 
//初始化
    Page.prototype.__init__ = function(){
       this.__oTable__ = document.getElementById(this.tableId);
//获取table引用
       this.__oTBody__ = this.__oTable__.tBodies[this.tBodyId];
//获取tBody引用
       this.__dataRows__ = this.__oTBody__.rows;
       this.rowCount = this.__dataRows__.length;
       try {
       this.absolute = (this.absolute <= 0) || (this.absolute>this.rowCount) ? this.rowCount : this.absolute;
       this.pageCount = parseInt(this.rowCount%this.absolute == 0 ? this.rowCount/this.absolute : this.rowCount/this.absolute+1);
       }catch(exception){}
       this.__updateTableRows__();
}
 
//下一页
    Page.prototype.nextPage = function() {
       if(this.pageIndex + 1 < this.pageCount) {
           this.pageIndex += 1;
           this.__updateTableRows__();
       }
}
 
//上一页
    Page.prototype.prePage = function() {
       if(this.pageIndex >= 1) {
           this.pageIndex -= 1;
           this.__updateTableRows__();
       }
}
    
//首页
    Page.prototype.firstPage = function() {
       if(this.pageIndex != 0) {
           this.pageIndex = 0;
           this.__updateTableRows__();
       }
}
 
//尾页
    Page.prototype.lastPage = function() {
       if(this.pageIndex+1 != this.pageCount) {
           this.pageIndex = this.pageCount - 1;
           this.__updateTableRows__();
       }
}
 
//页定位方法
    Page.prototype.aimPage = function(iPageIndex) {
       if(iPageIndex > this.pageCount-1) {
           this.pageIndex = this.pageCount - 1;
       }else if(iPageIndex < 0) {
           this.pageIndex = 0;
       }else {
           this.pageIndex = iPageIndex;
       }
           this.__updateTableRows__();
}

  
//执行分页时，更新显示表格内容
    Page.prototype.__updateTableRows__ = function() {
       var iCurrentRowCount = this.absolute * this.pageIndex;
       var iMoreRow = this.absolute+iCurrentRowCount > this.rowCount ? this.absolute+iCurrentRowCount - this.rowCount : 0;
       var tempRows = this.__cloneRows__();
       //alert(tempRows === this.dataRows);
       //alert(this.dataRows.length);
       var removedTBody = this.__oTable__.removeChild(this.__oTBody__);
       var newTBody = document.createElement("TBODY");
       newTBody.setAttribute("id", this.tBodyId);
   
       for(var i=iCurrentRowCount; i < this.absolute+iCurrentRowCount-iMoreRow; i++) {
           newTBody.appendChild(tempRows[i]);
       }
       this.__oTable__.appendChild(newTBody);
       /**//*
       this.dataRows为this.oTBody的一个引用，
       移除this.oTBody那么this.dataRows引用将销失,
       code:this.dataRows = tempRows;恢复原始操作行集合.
       */
       this.__dataRows__ = tempRows;
       this.__oTBody__ = newTBody;
       //alert(this.dataRows.length);
       //alert(this.absolute+iCurrentRowCount);
       //alert("tempRows:"+tempRows.length);
}
 
//克隆原始操作行集合
    Page.prototype.__cloneRows__ = function() {
       var tempRows = [];
       for(var i=0; i<this.__dataRows__.length; i++) {
           tempRows[i] = this.__dataRows__[i].cloneNode(1);
       }
       return tempRows;
}
</script> 

</html>