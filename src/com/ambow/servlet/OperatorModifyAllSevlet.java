package com.ambow.servlet;
//修改当前用户所有信息
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
public class OperatorModifyAllSevlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		
		Operator operator=new Operator();
		operator.setId(Integer.parseInt(request.getParameter("id")));
		operator.setAccount(request.getParameter("account1"));
		operator.setName(request.getParameter("name"));
		operator.setPassword(request.getParameter("pw"));
		operator.setTel(request.getParameter("tel"));
		operator.setPosition(request.getParameter("position"));
		operator.setRemark(request.getParameter("remark"));
		operator.setRole(request.getParameter("role"));
		
		if(operator.getTel().equals("")){
			PrintWriter out = response.getWriter();
			out.print("<script>alert('用户电话不能为空!');window.location.href='/Book_System/static/module/person/person001/user_modify.jsp'</script>");
			out.close();
		}
		OperatorService service1 = new OperatorServiceImpl();
		
		boolean r = service1.modify(operator);
		System.out.println("OperatorModifyAllSevlet.r="+r);
		if (r) {

			HttpSession session = request.getSession(true);
			session.removeAttribute("denglu");
			session.setAttribute("denglu", operator);
			
			request.removeAttribute("position");
			request.removeAttribute("tel");
			request.removeAttribute("remark");
			session.setAttribute("position", operator.getPosition());
			session.setAttribute("tel", operator.getTel());
			session.setAttribute("remark", operator.getRemark());
			
			
			PrintWriter out = response.getWriter();
			out.print("<script>alert('修改成功!');window.location.href='/Book_System/static/module/person/person001/user_detail.jsp'</script>");
			out.close();
		} else {
			System.out.println("修改失败");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('修改失败!');window.location.href='/Book_System/static/module/person/person001/psw_modify'</script>");
			out.close();
		}
	}
 
}
