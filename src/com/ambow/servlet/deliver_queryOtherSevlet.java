package com.ambow.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Deliver_To_Other;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class deliver_queryOtherSevlet extends HttpServlet {

	 
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
		String endtime=request.getParameter("endtime");
		System.out.println("deliver_queryOtherSevlet.begintime="+begintime+" endtime"+endtime);
		RuKuService service=new RuKuServiceImpl();
		List<Deliver_To_Other> dto=service.deliver_queryother(begintime,endtime);
		System.out.println("deliver_queryOtherSevlet.dto.size="+dto.size());
		if(dto.size()==0){
		}else{
			request.setAttribute("n", dto.size());
			for(int i=0;i<dto.size();i++){
				request.setAttribute("jcmc"+i, dto.get(i).getTextBook().getName());
				request.setAttribute("bc"+i, dto.get(i).getTextBook().getVersion());
				request.setAttribute("zz"+i, dto.get(i).getTextBook().getAuthor());
				request.setAttribute("cbs"+i, dto.get(i).getTextBook().getPublish());
				request.setAttribute("czy"+i, dto.get(i).getOperator().getName());
				request.setAttribute("cksj"+i, dto.get(i).getDeliver_date());
				request.setAttribute("lyr"+i, dto.get(i).getName());
				request.setAttribute("sl"+i, dto.get(i).getAmount());
				}
			request.getRequestDispatcher("/static/module/storage/storage001/other/show_deliver_query.jsp").forward(request,response);
		
		}
	}
}
