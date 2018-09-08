package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ambow.dao.RuKuDao;
import com.ambow.dao.impl.RuKuDaoImpl;
import com.ambow.model.Operator;

@SuppressWarnings("serial")
public class GetbookServletTeacher extends HttpServlet {
 
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
		 String getamount=request.getParameter("lysl");
		String getteachername= request.getParameter("jsxm");
		HttpSession session=request.getSession(true);
		Operator operator=(Operator) session.getAttribute("denglu");
		RuKuDao dao =new RuKuDaoImpl();
		boolean b=dao.getBookTeacher(textbookid,getamount,getteachername,operator);
		System.out.println("GetbookServletTeacher.b="+b);
		if(b){
			PrintWriter out = response.getWriter();
			out.print("<script>alert('teacher get books success ！');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('teacher get books failed ！');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
	}

}
