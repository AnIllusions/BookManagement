package com.ambow.servlet;
//库存管理.教材移库.移库查询
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.StockMove;
import com.ambow.model.TextBook;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class yikuServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		 this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		 String jiawei=request.getParameter("srjiawei");
		String name= request.getParameter("srname");
		System.out.println("yikuServlet.jiawei="+jiawei+" name="+name);
		RuKuService service=new RuKuServiceImpl();
		List<TextBook> textbook=service.storageMoveQuery(jiawei,name);
		System.out.println("yikuServlet.textbook.size="+textbook.size());
		if(textbook.size()!=0){
			request.setAttribute("n", textbook.size());
			for(int i=0;i<textbook.size();i++){
				request.setAttribute("sjh3"+i, textbook.get(i).getCell().getName());
				request.setAttribute("jcmc3"+i, textbook.get(i).getName());
				request.setAttribute("sl3"+i, textbook.get(i).getAmount());
			}
			request.getRequestDispatcher(
					"/static/module/storage/storage005/show_storage_move_query.jsp")
					.forward(request, response);
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('查询为空!');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
	}

}
