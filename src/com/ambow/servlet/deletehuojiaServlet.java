package com.ambow.servlet;
//库存管理.货架管理.货架查询.删除
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class deletehuojiaServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String deleteid=request.getParameter("hiddenid");
		System.out.println("deletehuojiaServlet.deleteid="+deleteid);
		RuKuService service=new RuKuServiceImpl();
		boolean b=service.deletehuojiaById(deleteid);
		System.out.print("deletehuojiaServlet.b="+b);
		if(b){
			PrintWriter out = response.getWriter();
			out.print("<script>alert('删除成功!');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('删除失败!');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
	}
 
}
