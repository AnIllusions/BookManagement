package com.ambow.servlet;
//库存管理.出库管理.教师领书
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.ambow.model.Deliver_To_Teacher;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class deliver_queryTeacherSevlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		 String begintime=request.getParameter("begintime");
		 String endtime = request.getParameter("endtime");
		String teachername =request.getParameter("teachername");
		System.out.println("deliver_queryTeacherServlet.begintime="+begintime+" endtime="+endtime+" teacehrname="+teachername);
		RuKuService service=new RuKuServiceImpl();
		List<Deliver_To_Teacher> dtt=service.deliver_queryteacher(begintime, endtime,teachername);
	    System.out.println("deliver_queryTeacehrSevlet.dtt.size="+dtt.size());
	    
	    request.setAttribute("n", dtt.size());
	    for(int i=0;i<dtt.size();i++){
	    	request.setAttribute("jcmc"+i, dtt.get(i).getTextBook().getName());
	    	request.setAttribute("bc"+i, dtt.get(i).getTextBook().getVersion());
	    	request.setAttribute("zz"+i, dtt.get(i).getTextBook().getAuthor());
	    	request.setAttribute("cbs"+i, dtt.get(i).getTextBook().getPublish());
	    	request.setAttribute("dj"+i, dtt.get(i).getTextBook().getPrice());
	    	request.setAttribute("czy"+i, dtt.get(i).getOperator().getName());
	    	request.setAttribute("cksj"+i, dtt.get(i).getDeliver_date());
	    	request.setAttribute("jsxm"+i, dtt.get(i).getTname());
	    	request.setAttribute("sl"+i, dtt.get(i).getTextBook().getAmount());
	    }
	    request.getRequestDispatcher("/static/module/storage/storage001/teacher/show_deliver_query.jsp").forward(request, response);
	}

}
