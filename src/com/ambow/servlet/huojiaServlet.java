package com.ambow.servlet;
//库存管理.货架添加
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class huojiaServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String addname=request.getParameter("addname");
		String addremark=request.getParameter("addremark");
		System.out.println("huojiaservlet.addname="+addname+" addremark="+addremark);
		RuKuService service=new RuKuServiceImpl();
		boolean b=service.addCell(addname,addremark);
		System.out.println("huojiaServlet.b="+b);
		if(b){
			PrintWriter out = response.getWriter();
			out.print("<script>alert('货架添加成功!');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('货架添加失败！');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
	}
 
}
