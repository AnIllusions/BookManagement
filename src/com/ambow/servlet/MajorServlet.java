package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.Major;
import com.ambow.service.MajorService;
import com.ambow.service.impl.MajorServiceImpl;

public class MajorServlet extends HttpServlet {

	MajorService majorService = new MajorServiceImpl(); 
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
			String majorName = request.getParameter("majorName");
			String hql = "from Major where name=?";
			String[] param = { majorName };
			List<Major> majors = majorService.queryByProperty(hql, param);
			if (majors != null && !majors.isEmpty()) {
				System.out.println("查询成功");
				request.setAttribute("majors", majors);
				request.getRequestDispatcher("/static/module/student/student001/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("查询失败");
				response.sendRedirect("/static/module/student/student001/query_result.jsp");
			}
		} catch (Exception e) {
		}
	}

	//删除
	public void delete(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer id = Integer.valueOf(request.getParameter("id"));// 被删除专业的id
			Major major = majorService.queryById(Major.class, id);
			boolean b = majorService.deleteMajor(major);
			if (b) {
				System.out.println("删除成功");
				List<Major> majors = majorService.queryAll("from Major");
				request.setAttribute("majors", majors);
				request.getRequestDispatcher("/static/module/student/student001/query_result.jsp").forward(request,
						response);
			} else {
				System.out.println("删除失败");
				response.sendRedirect("/static/module/student/student001/del_major_failed.jsp");
			}
		} catch (Exception e) {
		}
	}

	//更新
	public void update(HttpServletRequest request, HttpServletResponse response) {
		try {
		Integer id = Integer.valueOf(request.getParameter("id"));
		String majorName = request.getParameter("majorName");
		String remark = request.getParameter("remark");
		Major major = majorService.queryById(Major.class, id);
		major.setName(majorName);
		major.setRemark(remark);
		boolean b = majorService.updateMajor(major);
		if (b) {
			System.out.println("修改成功");
			List<Major> majors = majorService.queryAll("from Major");
			request.setAttribute("majors", majors);
			request.getRequestDispatcher("/static/module/student/student001/query_result.jsp").forward(request,
					response);
		}else {
			System.out.println("修改失败");
			List<Major> majors = majorService.queryAll("from Major");
			request.setAttribute("majors", majors);
			request.getRequestDispatcher("/static/module/student/student001/query_result.jsp").forward(request,
					response);
		}
		} catch (Exception e) {
		}
	}
	
	
	//添加
	public void add(HttpServletRequest request, HttpServletResponse response) {
		try {
			String majorName = request.getParameter("majorName");// 专业名称
			String remark = request.getParameter("remark");// 备注
			Major major = new Major();
			major.setName(majorName);
			major.setRemark(remark);
			boolean b = majorService.addMajor(major);
			if (b) {
				System.out.println("添加成功");
				List<Major> majors = majorService.queryAll("from Major");
				request.setAttribute("majors", majors);
				request.getRequestDispatcher("/static/module/student/student001/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("添加失败");
				response.sendRedirect("/static/module/student/student001/add_major.jsp");
			}
		} catch (Exception e) {
		}
	}


}
