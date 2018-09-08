package com.ambow.servlet;
//库存管理.教材盘点.盘点纪录
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.StockCheck;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class jiluServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String operater= request.getParameter("gly");
		String begintime= request.getParameter("qssj");
		String endtime= request.getParameter("zzsj");
		System.out.println("operater="+operater+" begintime="+begintime+" endtime="+endtime);
		RuKuService service = new RuKuServiceImpl();
		List<StockCheck> stockCheck=service.querybyOperator(operater,begintime,endtime);
		System.out.println("jiluServlet.stockCheck.size="+stockCheck.size());
		if(stockCheck.size()!=0){
			request.setAttribute("n", stockCheck.size());
			for(int i=0;i<stockCheck.size();i++){
			request.setAttribute("gly1"+i, stockCheck.get(i).getOperator().getName());
			request.setAttribute("sj1"+i, stockCheck.get(i).getCheck_date());
			request.setAttribute("dz1"+i, stockCheck.get(i).getRemark());
			request.setAttribute("jc1"+i, stockCheck.get(i).getTextbook().getName());
			request.setAttribute("sl1"+i, stockCheck.get(i).getTextbook().getAmount());
			request.setAttribute("yy1"+i, "δ֪");
			}
			request.getRequestDispatcher("/static/module/storage/storage004/get_query_pandian.jsp")
			.forward(request, response);
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('盘点纪录为空');Book_System/WebRoot/static/module/storage/storage004/pandian_query.jsp</script>");
			out.close();
		}
	}

}
