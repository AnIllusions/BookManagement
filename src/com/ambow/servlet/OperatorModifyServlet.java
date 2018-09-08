package com.ambow.servlet;

//修改当前用户密码
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Operator;
import com.ambow.service.OperatorService;
import com.ambow.service.impl.OperatorServiceImpl;

@SuppressWarnings("serial")
public class OperatorModifyServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");

		String account1 = request.getParameter("account1");
		String oldpw = request.getParameter("oldpw");
		String newpw = request.getParameter("newpw");
		String renewpw = request.getParameter("renewpw");
		// 验证原密码
		OperatorService service = new OperatorServiceImpl();
		Operator oper = service.operatorLogin(account1, oldpw);
		if (oper == null) {
			System.out.println("验证失败");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('验证失败!');window.location.href='/Book_System/static/module/person/person001/psw_modify.jsp'</script>");
			out.close();
		} else {
			System.out.println("验证成功");

			if (!newpw.equals(renewpw)) {
				System.out.println("请确认新密码一致");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('请确认新密码一致!');window.location.href='/Book_System/static/module/person/person001/psw_modify.jsp'</script>");
				out.close();

			} else {

				System.out.println("开始修改密码");

				Operator operator =(Operator) request.getSession().getAttribute("denglu");
				operator.setPassword(newpw);

				OperatorService service1 = new OperatorServiceImpl();
				boolean r = service1.modify(operator);
				if (r) {
					System.out.println("修改成功");
					
					request.getSession().removeAttribute("denglu");
					request.getSession().setAttribute("denglu", operator);
					
					PrintWriter out = response.getWriter();
					out.print("<script>alert('修改成功!请重新登录！');window.parent.location.href='/Book_System/static/login.jsp'</script>");
				    out.close();
				} else {
					System.out.println("修改失败");
					PrintWriter out = response.getWriter();
					out.print("<script>alert('修改失败!');window.location.href='/Book_System/static/module/person/person001/psw_modify.jsp'</script>");
					out.close();
				}
			}
		}

	}
}
