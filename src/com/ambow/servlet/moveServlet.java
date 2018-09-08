package com.ambow.servlet;
//库存管理.教材移库.移库操作
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ambow.dao.RuKuDao;
import com.ambow.dao.impl.RuKuDaoImpl;
import com.ambow.model.Operator;

@SuppressWarnings("serial")
public class moveServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		
		HttpSession session=request.getSession(true);
		Operator operator=(Operator) session.getAttribute("denglu");
		
		String oldjiawei=request.getParameter("oldjiawei");
		// String oldamount=request.getParameter("oldamount");
		String oldname=request.getParameter("oldname");
		String newjiawei=request.getParameter("newjiawei");
		String newamount= request.getParameter("newamount");
		
	     RuKuDao dao=new RuKuDaoImpl();
		boolean b=dao.stockaddMove(operator,oldjiawei,oldname,newjiawei,newamount);
		if(b){
			System.out.println("移库成功");
			response.sendRedirect("/Book_System/static/module/main.jsp");
		}else{
			System.out.println("移库成功。。。。。。");
			response.sendRedirect("/Book_System/static/module/main.jsp");
		}
	}

}
