package com.ambow.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ambow.model.TextBook;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class other_querybookSevlet extends HttpServlet {

	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	 }
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");

       String name= request.getParameter("name");
       String author= request.getParameter("author");
       String publish= request.getParameter("publish");
	 
       RuKuService service =new RuKuServiceImpl();
       List<TextBook> textBooks=service.serchbook(name,author,publish);
       System.out.println("teacher_querybookSevlet.textbooks="+textBooks);
       request.setAttribute("list", textBooks);
      
       HttpSession session=request.getSession(true);
       session.removeAttribute("oTextBooks");
       session.setAttribute("oTextBooks", textBooks);
      
       request.getRequestDispatcher("/static/module/storage/storage001/other/show_book_query.jsp").forward(request, response);
	}

}
