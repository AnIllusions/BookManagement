package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.TextBook;
import com.ambow.service.TextBookListService;
import com.ambow.service.impl.TextBookListServiceImpl;

public class TextBookListServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String name = request.getParameter("name");
		String author = request.getParameter("author");
		String publish = request.getParameter("publish");
		
		if (name.equals("all") & author.equals("all") & publish.equals("all")) {
			TextBookListService tb = new TextBookListServiceImpl();
			List<TextBook> books =  tb.getAllBooks(TextBook.class);
			request.setAttribute("books", books);
			request.getRequestDispatcher("/static/module/book/book001/book_list.jsp")
	          .forward(request, response);
		}else{
			if(name==null)
				name = "%%";
			else
				name = "%"+name+"%";
			if(author==null)
				author = "%%";
			else
				author = "%"+author+"%";
			if(publish==null)
				publish = "%%";
			else
				publish = "%"+publish+"%";
			TextBookListService tb = new TextBookListServiceImpl();
			List<TextBook> books = tb.getBooksByXXXX(TextBook.class,name,author,publish);
			request.setAttribute("books", books);
			request.getRequestDispatcher("/static/module/book/book001/book_list.jsp")
	          .forward(request, response);
			
		}
		
		
		

		out.flush();
		out.close();
	}

}
