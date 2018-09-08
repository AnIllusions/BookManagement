package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Supplier;
import com.ambow.service.SupplierListService;
import com.ambow.service.impl.SupplierListServiceImpl;

public class SupplierListServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		
		if(name.equals("all")||name==null){
			SupplierListService  supplierListService = new SupplierListServiceImpl();
			List<Supplier> suppliers = supplierListService.getAllSupplier(Supplier.class);
			request.setAttribute("suppliers", suppliers);
			request.getRequestDispatcher("/static/module/book/book002/supplier_list.jsp")
	          .forward(request, response);
		}else{
			SupplierListService  supplierListService = new SupplierListServiceImpl();
			List<Supplier> suppliers = supplierListService.getSupplierByName(Supplier.class,name);
			request.setAttribute("suppliers", suppliers);
			request.getRequestDispatcher("/static/module/book/book002/supplier_list.jsp")
	          .forward(request, response);
		}
		
		

		
		
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		this.doGet(request, response);
	}

}
