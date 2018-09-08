package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Cell;
import com.ambow.service.RuKuService;
import com.ambow.service.impl.RuKuServiceImpl;
//库存管理.货架管理.货架查询.查询
@SuppressWarnings("serial")
public class serchhuojiaServlet extends HttpServlet {
 
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		this.doPost(request, response);
	}
 
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String shelfName=request.getParameter("shelfName");
		RuKuService service=new RuKuServiceImpl();
		List<Cell> cell=service.queryhuojiaByname(shelfName);
		System.out.println("serchhuojiaServlet.cell.size="+cell.size());
		if(cell.size()!=0){
			request.setAttribute("n", cell.size());
			for(int i=0;i<cell.size();i++){
				request.setAttribute("hid"+i, cell.get(i).getId());
				request.setAttribute("hname"+i, cell.get(i).getName());
				request.setAttribute("hremark"+i, cell.get(i).getRemark());
			}
				request.getRequestDispatcher("/static/module/storage/storage006/show_shelf_list.jsp")
				.forward(request, response);
		}else{
			PrintWriter out = response.getWriter();
			out.print("<script>alert('查询为空！');window.location.href='/Book_System/static/module/main.jsp'</script>");
			out.close();
		}
	}
}
