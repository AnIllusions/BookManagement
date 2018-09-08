package com.ambow.servlet;

//库存管理.库存查询
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Stock;
import com.ambow.model.TextBook;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;
import com.ambow.utils.BaseDAO;

@SuppressWarnings("serial")
public class kuchunServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String namet1 = request.getParameter("t1");
		String jiaweit2 = request.getParameter("t2");
		System.out.println("kuchunservlet.namet1=" + namet1 + " jiaweit2="
				+ jiaweit2);
		RuKuService service = new RuKuServiceImpl();
		List<Stock> stock = service.serchbynameAndjiawei(namet1, jiaweit2);
		System.out.println("kuchunServlet.stock.size="+stock.size());
		if (stock.size()==0) {
			System.out.println("rukuqueryservlet.stockReceive ==null");
			PrintWriter out = response.getWriter();
			out.print("<script>alert('库存为空！');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		} else {
			request.setAttribute("n", stock.size());
			for(int i=0;i<stock.size();i++){
				
			TextBook textBook = (TextBook) BaseDAO.get(TextBook.class, stock.get(i).getTextBook().getId());
			request.setAttribute("jcmc"+i, textBook.getName());
			request.setAttribute("sjh"+i, textBook.getCell().getName());
			request.setAttribute("sl"+i, textBook.getAmount());
			
			request.setAttribute("textbookk"+i,textBook);

			}
			request.getRequestDispatcher("/static/module/storage/storage003/show_stockpile.jsp")
			.forward(request, response);
		}
	}

}
