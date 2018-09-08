package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class editDeletetextbookServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String textbookid=request.getParameter("textbookid");
		System.out.println("editDeletetextbookServlet. textbookid="+textbookid);
		RuKuService service=new RuKuServiceImpl();
		boolean b=service.deletetextbook(textbookid);
		System.out.println("editDeletetextbookServlet.b="+b);
		if(b){
			PrintWriter out = response.getWriter();
			out.print("<script>alert('删除成功');window.location.href='/static/main.jsp'</script>");
			out.close();
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('删除失败（外键问题暂未解决）');window.location.href='/static/main.jsp'</script>");
			out.close();
		}
	}

}
