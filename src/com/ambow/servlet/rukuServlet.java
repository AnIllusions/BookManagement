package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

//库存管理.入库管理.教材入库.添加入库
public class rukuServlet extends HttpServlet {

	private static final long serialVersionUID = -264494738451270495L;

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		HttpSession session = request.getSession(true);
		String account=(String) session.getAttribute("account");
		String amount = request.getParameter("amount");
		String isbn = request.getParameter("isbn");
		String supplier = request.getParameter("supplier");
		String jiawei = request.getParameter("jiawei");
		String remark = request.getParameter("remark");
		RuKuService service = new RuKuServiceImpl();
		int i = service.addbooktext(account,isbn, amount, supplier, jiawei, remark);
		System.out.println("rukuservlet.i=" + i);
		if (i == 0) {
			response.sendRedirect("/Book_System/static/module/storage/storage002/receive_addbook.jsp");
		} else if (i == -1) {
			PrintWriter out = response.getWriter();
			out.print("<script>alert('入库失败');window.location.href='/Book_System/static/module/storage/storage002/receive.jsp'</script>");
			out.close();
		} else if (i == 1) {
			request.getRequestDispatcher("/static/module/main.jsp")
					.forward(request, response);
		} else {
			request.getRequestDispatcher("/static/module/main.jsp")
					.forward(request, response);
		}
	}
}
