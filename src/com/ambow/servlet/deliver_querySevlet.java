package com.ambow.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.dao.RuKuDao;
import com.ambow.dao.impl.RuKuDaoImpl;
import com.ambow.model.Deliver_To_Other;
import com.ambow.model.Deliver_To_Station;
import com.ambow.model.Deliver_To_Student;
import com.ambow.model.Deliver_To_Teacher;
import com.ambow.model.StockMove;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class deliver_querySevlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
 
		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String begintime = request.getParameter("begintime");
		String endtime = request.getParameter("endtime");
		 
		RuKuDao dao = new RuKuDaoImpl();
		List<Deliver_To_Station> dts1 = dao.deliver_querystation(begintime,
				endtime);
		System.out
				.println("deliver_queryStationSevlet.dts1.size=" + dts1.size());
		int  j=0;
		for (int i = 0; i < 0+ dts1.size(); i++) {
			request.setAttribute("jcmc" + i, dts1.get(j).getTextBook()
					.getName());
			request.setAttribute("bc" + i, dts1.get(j).getTextBook()
					.getVersion());
			request.setAttribute("zz" + i, dts1.get(j).getTextBook()
					.getAuthor());
			request.setAttribute("cbs" + i, dts1.get(j).getTextBook()
					.getPublish());
			request.setAttribute("dj" + i, dts1.get(j).getTextBook().getPrice());
			request.setAttribute("czy" + i, dts1.get(j).getOperator().getName());
			request.setAttribute("cksj" + i, dts1.get(j).getDeliver_date());
			request.setAttribute("hsz" + i, dts1.get(j).getStation().getName());
			request.setAttribute("sl" + i, dts1.get(j).getTextBook()
					.getAmount());
			j++;
		}
		// //////////////////////
		List<Deliver_To_Teacher> dtt = dao.deliver_queryteacher(begintime,
				endtime);
		System.out.println("deliver_queryTeacehrSevlet.dtt.size=" + dtt.size());
		  j=0;
		for (int i = 0+ dts1.size(); i < 0+ dts1.size()
				+ dtt.size(); i++) {
			request.setAttribute("jcmc" + i, dtt.get(j).getTextBook().getName());
			request.setAttribute("bc" + i, dtt.get(j).getTextBook()
					.getVersion());
			request.setAttribute("zz" + i, dtt.get(j).getTextBook().getAuthor());
			request.setAttribute("cbs" + i, dtt.get(j).getTextBook()
					.getPublish());
			request.setAttribute("dj" + i, dtt.get(j).getTextBook().getPrice());
			request.setAttribute("czy" + i, dtt.get(j).getOperator().getName());
			request.setAttribute("cksj" + i, dtt.get(j).getDeliver_date());
			request.setAttribute("jsxm" + i, dtt.get(j).getTname());
			request.setAttribute("sl" + i, dtt.get(j).getTextBook().getAmount());
		  j++;
		}
		
		// /////////////////////
		List<Deliver_To_Other> dto = dao.deliver_queryother(begintime, endtime);
		System.out.println("deliver_queryOtherSevlet.dto.size=" + dto.size());
		  
         j=0;
			for (int i = 0+ dts1.size() + dtt.size(); i <0
					+ dts1.size() + dtt.size() + dto.size(); i++) {
				request.setAttribute("jcmc" + i, dto.get(j).getTextBook()
						.getName());
				request.setAttribute("bc" + i, dto.get(j).getTextBook()
						.getVersion());
				request.setAttribute("zz" + i, dto.get(j).getTextBook()
						.getAuthor());
				request.setAttribute("cbs" + i, dto.get(j).getTextBook()
						.getPublish());
				request.setAttribute("czy" + i, dto.get(j).getOperator()
						.getName());
				request.setAttribute("cksj" + i, dto.get(j).getDeliver_date());
				request.setAttribute("lyr" + i, dto.get(j).getName());
				request.setAttribute("sl" + i, dto.get(j).getAmount());
				j++;
			}
			// ////////////
			request.setAttribute("n", 0+ dts1.size() + dto.size()
					+ dtt.size());
			request.getRequestDispatcher("/static/module/storage/storage001/show_deliver_query.jsp").forward(request,response);
			
			// ///////////////////////////////////////////////////////////////////
		 }
}
