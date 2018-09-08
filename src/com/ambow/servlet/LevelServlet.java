package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Level;
import com.ambow.service.LevelService;
import com.ambow.service.impl.LevelServiceImpl;

public class LevelServlet extends HttpServlet {

	LevelService lService = new LevelServiceImpl();
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
		}else if(status.equals("delete")) {
			delete(request,response);
		}else if(status.equals("update")) {
			update(request,response);
		}else if(status.equals("query")) {
			query(request,response);
		}
	}
	//查询
	public void query(HttpServletRequest request, HttpServletResponse response) {
		try {
			String levelName = request.getParameter("levelName");
			String hql = "from Level where name=?";
			String[] param = { levelName };
			List<Level> levels = lService.queryByProperty(hql, param);
			if (levels != null && !levels.isEmpty()) {
				System.out.println("查询成功");
				request.setAttribute("levels", levels);
				request.getRequestDispatcher("/static/module/student/student006/query_result.jsp").forward(request,
						response);
			}else {
				response.sendRedirect("/static/module/student/student006/query_result.jsp");
			}
		} catch (Exception e) {
		}
	}

	//更新
	public void update(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer id = Integer.valueOf(request.getParameter("id"));// 被更新层次的id
			Level level = lService.queryById(Level.class, id);
			String levelName = request.getParameter("levelName");
			String remark = request.getParameter("remark");
			level.setName(levelName);
			level.setRemark(remark);
			boolean b = lService.updateLevel(level);
			if (b) {
				System.out.println("更新成功");
				List<Level> levels = lService.queryAll("from Level");
				request.setAttribute("levels", levels);
				request.getRequestDispatcher("/static/module/student/student006/query_result.jsp").forward(request,
						response);
			} else {
				System.out.println("更新失败");
				response.sendRedirect("/static/module/student/student006/modify_level.jsp");
			}
		} catch (Exception e) {
		}
	}

	//删除
	public void delete(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer id = Integer.valueOf(request.getParameter("id"));// 被删除层次的id
			Level level = lService.queryById(Level.class, id);
			boolean b = lService.deleteLevel(level);
			if (b) {
				System.out.println("删除成功");
				List<Level> levels = lService.queryAll("from Level");
				request.setAttribute("levels", levels);
				request.getRequestDispatcher("/static/module/student/student006/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("删除失败");
			}
		} catch (Exception e) {
		}
	}
	//添加层次
	public void add(HttpServletRequest request, HttpServletResponse response) {
		try {
			String levelName = request.getParameter("levelName");// 层次名称
			String remark = request.getParameter("remark");// 备注
			Level level = new Level();
			level.setName(levelName);
			level.setRemark(remark);
			boolean b = lService.addLevel(level);
			if (b) {
				System.out.println("添加成功");
				List<Level> levels = lService.queryAll("from Level");
				request.setAttribute("levels", levels);
				request.getRequestDispatcher("/static/module/student/student006/query_result.jsp").forward(request,
						response);
			} else {
				System.out.println("添加失败");
				response.sendRedirect("/static/module/student/student006/add_level.jsp");
			}
		} catch (Exception e) {
		}
	}

}
