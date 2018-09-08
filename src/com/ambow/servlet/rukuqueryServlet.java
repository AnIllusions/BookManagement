package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.StockReceive;
import com.ambow.model.Supplier;
import com.ambow.model.TextBook;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;
import com.ambow.utils.BaseDAO;
//库存管理.入库管理.入库查询
@SuppressWarnings("serial")
public class rukuqueryServlet extends HttpServlet {
 
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
		 String suppliername=request.getParameter("suppliername");
		 String bookname=request.getParameter("bookname");
		 System.out.println("begintime="+begintime+" endtime="+endtime+"suppliername="+suppliername+"bookname="+bookname);
		
		     RuKuService service  = new RuKuServiceImpl();
		     List<StockReceive> stockReceive=service.serchreceivebook(begintime,endtime,suppliername,bookname);
			System.out.println("rukuqueryservlet.stockReceive.size=" + stockReceive.size());
			 if (stockReceive .size()==0) {
					System.out.println("rukuqueryservlet.stockReceive ==null");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('入库为空！');window.location.href='/Book_System/static/module/storage/storage002/receive.jsp'</script>");
				out.close();
			} else {
				System.out.println("rukuqueryservlet.stockReceive !=null");
				request.setAttribute("n", stockReceive.size());
				for(int i=0;i<stockReceive.size();i++){
				Supplier supplier=(Supplier) BaseDAO.get(Supplier.class, stockReceive.get(i).getSupplier().getId());
                TextBook textBook=(TextBook) BaseDAO.get(TextBook.class, stockReceive.get(i).getTextBook().getId());
				
                request.setAttribute("suppliername1"+i, supplier.getName());
                request.setAttribute("textbookname1"+i, textBook.getName());
                request.setAttribute("amount1"+i, textBook.getAmount());
                request.setAttribute("price1"+i, textBook.getPrice());
                request.setAttribute("rukutime1"+i, stockReceive.get(i).getReceive_date());
				}
				request.getRequestDispatcher("/static/module/storage/storage002/show_receive_query.jsp")
						.forward(request, response);
			}
	}

}
