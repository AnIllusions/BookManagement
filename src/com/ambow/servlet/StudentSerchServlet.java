package com.ambow.servlet;
//库存管理.出库管理.学生领书.学生领书——查询学生2
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Student;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class StudentSerchServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String banji=request.getParameter("banji");
		String xuehao=request.getParameter("xuehao");
		System.out.println("StudentSerchServlet.banji="+banji+" xuehao="+xuehao);
		RuKuService service=new RuKuServiceImpl();
		Student student=service.studentserch(banji,xuehao);
		System.out.println("StudentServlet.student ="+student );
		if(student!=null){
			request.setAttribute("student_id", student.getId());
            request.setAttribute( "sxuehao" ,student .getNumber());
            request.setAttribute( "sname" ,student  .getSname());
            request.setAttribute( "sbanji" ,student .getBji().getId());
			request.getRequestDispatcher("/static/module/storage/storage001/student/fetch.jsp")
					.forward(request, response);
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('查询为空');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
	}

}
