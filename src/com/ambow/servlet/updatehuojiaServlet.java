package com.ambow.servlet;
//库存管理.货架管理.货架查询.修改
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class updatehuojiaServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String updatename=request.getParameter("updatename");
		String hid =request.getParameter("hid");
	    String updateremark=	request.getParameter("updateremark");
	    System.out.print("updatehuojiaServlet.updatename="+updatename+" "
	    		+ "hid="+hid+" updateremark="+updateremark);
	    RuKuService service=new RuKuServiceImpl();
	    boolean b=service.modifyhuojia(hid,updatename,updateremark);
    	System.out.println("updatehuojiaServlet.b="+b);
	    if(b){
	    	PrintWriter out = response.getWriter();
			out.print("<script>alert('修改成功');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
	    }else{
	    	PrintWriter out = response.getWriter();
			out.print("<script>alert('修改成功。。。 。。。');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
	    }
	}

}
