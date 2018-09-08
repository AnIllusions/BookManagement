package com.ambow.servlet;
//库存管理，学生领书查询，学生出库信息查询
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.dao.RuKuDao;
import com.ambow.dao.impl.RuKuDaoImpl;
import com.ambow.model.Deliver_To_Student;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class deliver_queryStudentSevlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String lb=request.getParameter("lb");
		String zy=request.getParameter("zy");
		String cc=request.getParameter("cc");
		String nj=request.getParameter("nj");
		String bj=request.getParameter("bj");
		String begintime=request.getParameter("begintime");
		String endtime=request.getParameter("endtime");
		System.out.println("deliver_queryStudentsevlet.lb="+lb+" zy="+zy+" cc="+cc+" nj="+nj+" bj="+bj+" begintime="+begintime+" endtime="+endtime);
	    RuKuDao dao=new RuKuDaoImpl();
		List<Deliver_To_Student> dts=dao.getDeliver_To_Student(lb,zy,cc,nj,bj,begintime,endtime);
		System.out.println("deliver_queryStudentSevlet.dts.size="+dts.size());
	     if(dts.size()==0){
	    }else{
	    	request.setAttribute("n",dts.size());
	    	for(int i=0;i<dts.size();i++){
	    		request.setAttribute("xh"+i,dts.get(i).getStudent().getNumber() );
	    		request.setAttribute("xm"+i,dts.get(i).getStudent().getSname() );
	    		request.setAttribute("bj"+i,dts.get(i).getStudent().getBji().getName() );
	    		request.setAttribute("czy"+i,dts.get(i).getOperator().getAccount() );
	    		request.setAttribute("lssj"+i, dts.get(i).getDeliver_time());
	    	    request.setAttribute("hidden"+i, dts.get(i).getPackageBook().getId());
	    	}
	    	request.getRequestDispatcher("/static/module/storage/storage001/student/show_deliver_query.jsp").forward(request, response);
	    }
	}

}
