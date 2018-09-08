package com.ambow.servlet;
//库存管理，学生领书查询，学生出库信息查询，套书详细信息
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
public class bookInfo_detailServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		int i=Integer.parseInt(request.getParameter("packagei"));
		int packageid=Integer.parseInt(request.getParameter("packageid"));
		System.out.println("bookinf_detailServlet.packageid="+packageid+ " packagei="+i);
		RuKuService service=new RuKuServiceImpl();
		List<Package_bookinf> pbi=service.getPackage_book(packageid);
		System.out.println("bookinfo_detailServlet.pbi="+pbi);
		if(pbi==null){
			
		}else{
			request.setAttribute("xn", pbi.get(0).getPackage_book().getAcademy_year());
			request.setAttribute("lb", pbi.get(0).getPackage_book().getPdescription());
			request.setAttribute("zy", pbi.get(0).getPackage_book().getMajor().getName());
			request.setAttribute("cc", pbi.get(0).getPackage_book().getLevel().getName());
			request.setAttribute("nj", pbi.get(0).getPackage_book().getGrade());
			
			request.setAttribute("n", pbi.size());
			for(int j=0;j<pbi.size();j++){
			request.setAttribute("jcmc"+j, pbi.get(j).getTextbook().getName());
			request.setAttribute("bc"+j, pbi.get(j).getTextbook().getVersion());
			request.setAttribute("zz"+j, pbi.get(j).getTextbook().getAuthor());
			request.setAttribute("cbs"+j, pbi.get(j).getTextbook().getPublish());
			request.setAttribute("dj"+j, pbi.get(j).getTextbook().getPrice());
			}
			request.getRequestDispatcher("/static/module/storage/storage001/student/bookInfo_detil.jsp").forward(request, response);
		}
	}

}
