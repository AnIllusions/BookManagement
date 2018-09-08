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
import com.ambow.model.StockCheck;

public class tiaozhengServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String tzamount= request.getParameter("tzamount");
		String tzreazon= request.getParameter("tzreason");
		String tzjiawei=request.getParameter("tzjiawei");
		if(tzamount.equals("")){
			PrintWriter out = response.getWriter();
			out.print("<script>alert('数量不能为空！');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
		HttpSession session=request.getSession(true);
		Operator operator=(Operator) session.getAttribute("denglu");
		
		RuKuDao dao=new RuKuDaoImpl();
		boolean b=dao.tiaozheng(operator,tzamount,tzreazon,tzjiawei);
		System.out.println("tiaozhengservlet.b="+b);
		if(b){
			PrintWriter out = response.getWriter();
			out.print("<script>alert('调整成功！');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('调整失败！');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
	}

}
