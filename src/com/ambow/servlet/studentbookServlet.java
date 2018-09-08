package com.ambow.servlet;
//库存管理.出库管理.学生领书.学生领书——查询学生1
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ambow.model.Package_bookinf;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class studentbookServlet extends HttpServlet {
 
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
		RuKuService service=new RuKuServiceImpl();
		List<Package_bookinf> package_bookinf=service.studentbookquery(xn,xq,lb,zy,cc,nj);
		System.out.println("studentbookServlet.package_bookinf.size="+package_bookinf.size());
		if(package_bookinf.size()!=0){
			request.setAttribute("n", package_bookinf.size());
		    int i=0;
		    request.setAttribute("mc"+i,package_bookinf.get(i).getPackage_book().getCategory().getName());
		    request.setAttribute("lb"+i, package_bookinf.get(i).getPackage_book().getPdescription());
		    request.setAttribute("cc"+i, package_bookinf.get(i).getPackage_book().getLevel().getName());
		    request.setAttribute("zy"+i, package_bookinf.get(i).getPackage_book().getMajor().getName());
		    request.setAttribute("nj"+i, package_bookinf.get(i).getPackage_book().getGrade());
		    request.setAttribute("bj"+i, package_bookinf.get(i).getPackage_book().getBji().getName());
		    HttpSession session=request.getSession(true);
		    session.setAttribute("package_id", package_bookinf.get(i).getPackage_book().getId());

		    for(i=0;i<package_bookinf.size();i++){
		    	request.setAttribute("jcmc"+i, package_bookinf.get(i).getTextbook().getName());
		    	request.setAttribute("bc"+i, package_bookinf.get(i).getTextbook().getVersion());
		    	request.setAttribute("zz"+i, package_bookinf.get(i).getTextbook().getAuthor());
		    	request.setAttribute("cbs"+i, package_bookinf.get(i).getTextbook().getPublish());
		    	request.setAttribute("dj"+i, package_bookinf.get(i).getTextbook().getPrice());
		    }
		    request.getRequestDispatcher("/static/module/storage/storage001/student/student.jsp")
			.forward(request, response);
		}else{
			System.out.println("studentbookServlet.package_bookinf==null");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('查询为空');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
	}

}
