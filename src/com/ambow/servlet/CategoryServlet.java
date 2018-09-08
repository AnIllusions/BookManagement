package com.ambow.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Category;
import com.ambow.service.CategoryService;
import com.ambow.service.impl.CategoryServiceImpl;

@SuppressWarnings("serial")
public class CategoryServlet extends HttpServlet {

	CategoryService cService = new CategoryServiceImpl();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 String status = request.getParameter("status");
		if(status.equals("add")) {
			add(request,response);
		}else if(status.equals("update")) {
			update(request,response);
		}else if(status.equals("delete")) {
			delete(request,response);
		}else if(status.equals("query")) {
			query(request,response);
		}
	}
	//查询
	public void query(HttpServletRequest request, HttpServletResponse response) {
		try {
			String categoryName = request.getParameter("categoryName");
			String hql = "from Category where name=?";
			String[] param = { categoryName };
			List<Category> cList = cService.queryByHql(hql, param);
			if (cList != null && !cList.isEmpty()) {
				System.out.println("查询成功");
				request.setAttribute("cList", cList);
				request.getRequestDispatcher("/static/module/student/student002/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("查询失败");
				response.sendRedirect("/static/module/student/student002/query_result.jsp");
			}
		} catch (Exception e) {
		}
	}
	//删除类别
	public void delete(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer id = Integer.valueOf(request.getParameter("id"));// 被删除类别的id
			Category category = cService.queryById(Category.class, id);
			boolean b = cService.delete(category);
			if (b) {
				System.out.println("删除成功");
				List<Category> cList = cService.queryAll("from Category");
				request.setAttribute("cList", cList);
				request.getRequestDispatcher("static/module/student/student002/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("删除失败");
			}
		} catch (Exception e) {
		}
	}

	//修改类别
	public void update(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer id = Integer.valueOf(request.getParameter("id"));// 被更新类别的id
			String categoryName = request.getParameter("categoryName");
			String remark = request.getParameter("remark");
			Category category = cService.queryById(Category.class, id);
			category.setName(categoryName);
			category.setRemark(remark);
			boolean b = cService.update(category);
			if (b) {
				System.out.println("修改成功");
				List<Category> cList = cService.queryAll("from Category");
				request.setAttribute("cList", cList);
				request.getRequestDispatcher("static/module/student/student002/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("修改失败");
				response.sendRedirect("static/module/student/student002/modify_type.jsp");
			}
		} catch (Exception e) {
		}
	}

	//添加类别
	public void add(HttpServletRequest request, HttpServletResponse response) {
		try {
			String categoryName = request.getParameter("categoryName");// 类别名称
			String remark = request.getParameter("remark");// 备注
			Category category = new Category();
			category.setName(categoryName);
			category.setRemark(remark);
			boolean b = cService.addCategory(category);
			if (b) {
				System.out.println("添加成功");
				List<Category> cList = cService.queryAll("from Category");
				request.setAttribute("cList", cList);
				request.getRequestDispatcher("static/module/student/student002/query_result.jsp").forward(request, response);
			}else {
				System.out.println("添加失败");
				response.sendRedirect("static/module/student/student002/add_type.jsp");
			}
		} catch (Exception e) {
		}
	}

}
