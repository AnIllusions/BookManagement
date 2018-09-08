package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ambow.model.Operator;
import com.ambow.service.OperatorService;
import com.ambow.service.impl.OperatorServiceImpl;

@SuppressWarnings("serial")
public class OperatorLoginServlet extends HttpServlet {

 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");

		String account = request.getParameter("account");
		String pwd = request.getParameter("pwd");

		System.out.println("OperatorLogin.account=" + account+ " pwd="+pwd);

		OperatorService service=new OperatorServiceImpl();
		Operator operator=service.operatorLogin(account, pwd);
		
		if (operator == null) {
			System.out.println("operator=null");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('该用户不存在!');window.location.href='/Book_System/static/login.jsp'</script>");
			out.close();
			} else {
			//保存登录用户信息到session
			HttpSession session =request.getSession(true);
			session.setAttribute("denglu", operator);
			//此处可以简化，暂时就这样
			session.setAttribute("name", operator.getName());
			session.setAttribute("position", operator.getPosition());
			session.setAttribute("tel", operator.getTel());
			session.setAttribute("role", operator.getRole());
			session.setAttribute("remark", operator.getRemark());
			session.setAttribute("account", operator.getAccount());
			session.setAttribute("id", operator.getId());
			session.setAttribute("pw", operator.getPassword());
			
			request.getRequestDispatcher("/static/index.jsp").forward(request,
					response);
		}
	} 

}
