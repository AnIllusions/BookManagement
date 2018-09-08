package com.ambow.servlet;
//库存管理.教材盘点.盘点调整
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.TextBook;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class pandianServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		 String jiawei=request.getParameter("tejiawei");
		 String amount=request.getParameter("teamount");
		 String remark=request.getParameter("teremark");
		 System.out.println("pandianservlet.jiawei="+jiawei+" teamount="+amount+" remark="+remark);
		 
		 RuKuService service  = new RuKuServiceImpl();
		 List<TextBook> textBook=service.serchByamountAndjiawei(jiawei,amount,remark);
		 System.out.println("pandianServlet.textBook.size="+textBook.size());
		 if(textBook.size()==0){
			 System.out.println("rukuqueryservlet.stockReceive ==null");
				PrintWriter out = response.getWriter();
				out.print("<script>alert('查询为空');window.location.href='/Book_System/static/module/main.jsp'</script>");
				out.close();
		 }else{
			 request.setAttribute("n", textBook.size());
		    for(int i=0;i<textBook.size();i++){
		 	request.setAttribute("jw1"+i, textBook.get(i).getCell().getName());
			request.setAttribute("isbnk1"+i,textBook.get(i).getIsbn());
			request.setAttribute("jcm1"+i,textBook.get(i).getName());
		    request.setAttribute("zz1"+i, textBook.get(i).getAuthor());
		    request.setAttribute("cbs1"+i, textBook.get(i).getPublish());
		    request.setAttribute("cbrq1"+i, textBook.get(i).getPublishdate());
		    request.setAttribute("bc1"+i, textBook.get(i).getVersion());
		    request.setAttribute("dj1"+i, textBook.get(i).getPrice());
		    request.setAttribute("sl1"+i, textBook.get(i).getAmount());
		    }
			request.getRequestDispatcher("/static/module/storage/storage004/get_pandianbook.jsp")
			.forward(request, response);
		 }
	}

}
