package com.ambow.servlet;
//库存管理.出库管理.学生领书.领书
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class studentGetBookServlet extends HttpServlet {
 
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
		String accountid=session.getAttribute("id").toString();
		String packageid=session.getAttribute("package_id").toString();
		String studentid=request.getParameter("student_id");
	 	System.out.println("studentGetBookServlet.studentid="+studentid+" accountid="+accountid+" packageid="+packageid);
	    RuKuService service=new RuKuServiceImpl();
	 	boolean b=service.addStudentGetBook(studentid,accountid,packageid);
    	System.out.println("studentgetbookservlet.b="+b);
	    if(b){
	    	PrintWriter out = response.getWriter();
			out.print("<script>alert('领书成功');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
	    }else{
	    	PrintWriter out = response.getWriter();
			out.print("<script>alert('领书失败');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
	    }
	}

}
