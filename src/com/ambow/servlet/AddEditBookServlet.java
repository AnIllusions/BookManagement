package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.dao.RuKuDao;
import com.ambow.dao.impl.RuKuDaoImpl;

@SuppressWarnings("serial")
public class AddEditBookServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String jcmc= request.getParameter("jcmc");
		String sl= request.getParameter("sl"); 
		String zz = request.getParameter("zz");
		String isbn= request.getParameter("isbn"); 
		String dj= request.getParameter("dj"); 
		String cbs = request.getParameter("cbs");
		String bz= request.getParameter("bz"); 
		String bc= request.getParameter("bc");
		String jw= request.getParameter("jw"); 
		String gys= request.getParameter("gys"); 
		 
		RuKuDao dao =new RuKuDaoImpl();
		int n=dao.addEditTextbook(jcmc,sl,zz,isbn,dj,cbs,bz,bc, jw,gys);
		System.out.print("addeditbookservlet.n="+n);
		if(n==-1){
			 PrintWriter out = response.getWriter();
				out.print("<script>alert('查询Cell为空');window.location.href='/Book_System/static/module/main.jsp'</script>");
				out.close();
		}else if(n==-2){
			 PrintWriter out = response.getWriter();
				out.print("<script>alert('查询Supplier为空');window.location.href='/Book_System/static/module/main.jsp'</script>");
				out.close();
		}else if(n==0){
			 PrintWriter out = response.getWriter();
				out.print("<script>alert('添加失败，请注意输入格式！');window.location.href='/Book_System/static/module/main.jsp'</script>");
				out.close();
		}else{ 
			     PrintWriter out = response.getWriter();
				out.print("<script>alert('添加成功');window.location.href='/Book_System/static/module/main.jsp'</script>");
				out.close();
		}
	}

}
