package com.ambow.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Deliver_To_Station;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class deliver_queryStationSevlet extends HttpServlet {
 
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
		String stationname= request.getParameter("stationname");
		System.out.println("deliver_queryStationSevlet.begintime="+begintime+" endtime="+endtime+" stationname="+stationname);
	   RuKuService service=new RuKuServiceImpl();
	   List<Deliver_To_Station> dts=service.deliver_querystation(stationname,begintime, endtime);
	   System.out.println("deliver_queryStationSevlet.dts.size="+dts.size()); 
	   request.setAttribute("n", dts.size());
	    for(int i=0;i<dts.size();i++){
	    	request.setAttribute("jcmc"+i, dts.get(i).getTextBook().getName());
	    	request.setAttribute("bc"+i, dts.get(i).getTextBook().getVersion());
	    	request.setAttribute("zz"+i, dts.get(i).getTextBook().getAuthor());
	    	request.setAttribute("cbs"+i, dts.get(i).getTextBook().getPublish());
	    	request.setAttribute("dj"+i, dts.get(i).getTextBook().getPrice());
	    	request.setAttribute("czy"+i, dts.get(i).getOperator().getName());
	    	request.setAttribute("cksj"+i, dts.get(i).getDeliver_date());
	    	request.setAttribute("hsz"+i, dts.get(i).getStation().getName());
	    	request.setAttribute("sl"+i, dts.get(i).getTextBook().getAmount());
	 	   }
	    request.getRequestDispatcher("/static/module/storage/storage001/station/show_deliver_query.jsp").forward(request, response);
	}

}
