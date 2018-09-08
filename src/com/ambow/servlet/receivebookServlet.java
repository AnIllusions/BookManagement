package com.ambow.servlet;
//库存管理.入库管理.教材入库.入库查询
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.TextBook;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;

@SuppressWarnings("serial")
public class receivebookServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String isbn = request.getParameter("isbn");
		System.out.println("receivebookServlet.isbn="+isbn);
		RuKuService service = new RuKuServiceImpl();
		List<TextBook> textBook = service.serchTextBook(isbn);
        System.out.println("receivebookservlet.textbook.size="+textBook.size());
		if (textBook.size()==0) {
			response.sendRedirect("/Book_System/static/module/storage/storage002/receive_addbook.jsp");
		} else {
			request.setAttribute("n", textBook.size());

			request.setAttribute("isbn", isbn);
			for(int i=0;i<textBook.size();i++){
				request.removeAttribute("name"+i);
				request.setAttribute("name"+i, textBook.get(i).getName());
				request.setAttribute("author"+i, textBook.get(i).getAuthor());
				request.setAttribute("version"+i, textBook.get(i).getVersion());
				request.setAttribute("isbn"+i, textBook.get(i).getIsbn());
				request.setAttribute("price"+i, textBook.get(i).getPrice());
				request.setAttribute("publish"+i, textBook.get(i).getPublish());
				request.setAttribute("publishdate"+i, textBook.get(i).getPublishdate());
			}
			request.getRequestDispatcher(
					"/static/module/storage/storage002/get_receivebook.jsp")
					.forward(request, response);

		}

	}

}
