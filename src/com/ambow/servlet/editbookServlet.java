package com.ambow.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Package_bookinf;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class editbookServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String xn=request.getParameter("xn");
		String xq=request.getParameter("xq");
		String lb=request.getParameter("lb");
		String zy=request.getParameter("zy");
		String cc=request.getParameter("cc");
		String nj=request.getParameter("nj");
		//String ms=request.getParameter("ms");
		RuKuService service=new RuKuServiceImpl();
		List<Package_bookinf> package_bookinf=service.studentbookquery(xn,xq,lb,zy,cc,nj);
		System.out.println("editbookServlet.package_bookinf.size="+package_bookinf.size());
		if(package_bookinf.size()!=0){
			request.setAttribute("n", package_bookinf.size());
			for(int i=0;i<package_bookinf.size();i++){
				request.setAttribute("jcmc"+i, package_bookinf.get(i).getTextbook().getName());
				request.setAttribute("zz"+i, package_bookinf.get(i).getTextbook().getAuthor());
				request.setAttribute("cbs"+i, package_bookinf.get(i).getTextbook().getPublish());
				request.setAttribute("dj"+i, package_bookinf.get(i).getTextbook().getPrice());
				request.setAttribute("textbookid"+i, package_bookinf.get(i).getTextbook().getId());
			}
			request.getRequestDispatcher("/static/module/storage/storage001/student/show_edit_package.jsp").forward(request, response);
		}else{
		}
	}

}
