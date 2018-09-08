package com.ambow.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.BJi;
import com.ambow.model.Category;
import com.ambow.model.Level;
import com.ambow.model.Major;
import com.ambow.service.BJiService;
import com.ambow.service.CategoryService;
import com.ambow.service.LevelService;
import com.ambow.service.MajorService;
import com.ambow.service.impl.BJiServiceImpl;
import com.ambow.service.impl.CategoryServiceImpl;
import com.ambow.service.impl.LevelServiceImpl;
import com.ambow.service.impl.MajorServiceImpl;



public class BJiServlet extends HttpServlet {
	BJiService bJiService = new BJiServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	LevelService levelService = new LevelServiceImpl();
	MajorService majorService = new MajorServiceImpl();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String status = request.getParameter("status");
		if(status.equals("add")) {
			add(request,response);
		}else if(status.equals("update")) {
			update(request,response);
		}else if(status.equals("query")) {
			String radio = request.getParameter("radio");//通过什么方式查询
			System.out.println(radio+"--------------");
			if(radio.equals("名称查询")) {
				queryByName(request,response);
			}else {
				queryByOthers(request,response);
			}
		}else if(status.equals("delete")) {
			delete(request,response);
		}
	}
	//通过其他查询
	public void queryByOthers(HttpServletRequest request, HttpServletResponse response) {
		try {

			String categoryName = request.getParameter("categoryName");// 类别名
			String majorName = request.getParameter("majorName");// 专业名
			String levelName = request.getParameter("levelName");// 层次名
			String gradeName = request.getParameter("gradeName");// 年级名

			Category category = categoryService.queryOneByName(categoryName);
			Integer c_id = category.getId();
			Major major = majorService.queryOneByName(majorName);
			Integer m_id = major.getId();
			Level level = levelService.queryOneByName(levelName);
			Integer l_id = level.getId();
			String hql = "from BJi where grade='" + gradeName + "'and major_id=" + m_id + " and category_id=" + c_id
					+ " and level_id=" + l_id;
			List<BJi> bList = bJiService.queryByHql(hql);
			if (bList != null && !bList.isEmpty()) {
				System.out.println("查询成功");
				List total = new ArrayList();
				for (int i = 0; i < bList.size(); i++) {
					total.add(bJiService.getCount(bList.get(i).getId()));
				}
				request.setAttribute("total", total);
				request.setAttribute("bList", bList);
				request.getRequestDispatcher("/static/module/student/student003/query_result.jsp").forward(request,
						response);
			} else {
				System.out.println("查询失败");
				response.sendRedirect("/static/module/student/student003/query_result.jsp");
			}
		} catch (Exception e) {
		}
	}

	//删除
	public void delete(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer id = Integer.valueOf(request.getParameter("id"));// 被删除班级的id
			BJi bJi = bJiService.queryById(BJi.class, id);
			boolean b = bJiService.delete(bJi);
			if (b) {
				System.out.println("删除成功");
				List<BJi> bList = bJiService.queryAll("from BJi");
				List total = new ArrayList();
				for (int i = 0; i < bList.size(); i++) {
					total.add(bJiService.getCount(bList.get(i).getId()));
				}
				request.setAttribute("total", total);
				request.setAttribute("bList", bList);
				request.getRequestDispatcher("/static/module/student/student003/query_result.jsp").forward(request,
						response);
			} else {
				System.out.println("删除失败");
				List<BJi> bList = bJiService.queryAll("from BJi");
				List total = new ArrayList();
				for (int i = 0; i < bList.size(); i++) {
					total.add(bJiService.getCount(bList.get(i).getId()));
				}
				request.setAttribute("total", total);
				request.setAttribute("bList", bList);
				request.getRequestDispatcher("/static/module/student/student003/query_result.jsp").forward(request,
						response);
			}
		} catch (Exception e) {
		}
	}
	//通过班级名称查询
	public void queryByName(HttpServletRequest request, HttpServletResponse response) {
		try {
			String className = request.getParameter("className");
			List<BJi> bList = bJiService.query(className);
			if (bList != null && !bList.isEmpty()) {
				System.out.println("查询成功");
				List total = new ArrayList();
				for (int i = 0; i < bList.size(); i++) {
					total.add(bJiService.getCount(bList.get(i).getId()));
				}
				request.setAttribute("total", total);
				request.setAttribute("bList", bList);
				request.getRequestDispatcher("/static/module/student/student003/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("查询失败");
				response.sendRedirect("/static/module/student/student003/query_result.jsp");
			}
		} catch (Exception e) {
		}
	}

	//更新
	public void update(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer id = Integer.valueOf(request.getParameter("id"));// 被更新班级的id
			String className = request.getParameter("className");// 班级名称
			String categoryName = request.getParameter("categoryName");// 类别名称
			String majorName = request.getParameter("majorName");// 专业名称
			String remark = request.getParameter("remark");// 备注

			Category category = categoryService.queryOneByName(categoryName);
			Major major = majorService.queryOneByName(majorName);
			BJi bJi = bJiService.queryById(BJi.class, id);
			bJi.setName(className);
			bJi.setCategory(category);
			bJi.setMajor(major);
			boolean b = bJiService.update(bJi);
			if (b) {
				System.out.println("修改成功");
				List<BJi> bList = bJiService.queryAll("from BJi");
				List total = new ArrayList();
				for (int i = 0; i < bList.size(); i++) {
					total.add(bJiService.getCount(bList.get(i).getId()));
				}
				request.setAttribute("total", total);
				request.setAttribute("bList", bList);
				request.getRequestDispatcher("/static/module/student/student003/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("修改失败");
				response.sendRedirect("/static/module/student/student003/modify_class.jsp");
			}
		} catch (Exception e) {
		}
	}

	//添加
	public void add(HttpServletRequest request, HttpServletResponse response) {
		try {
			String className = request.getParameter("className");// 班级名称
			String gradeName = request.getParameter("gradeName");// 年级名称
			String categoryName = request.getParameter("categoryName");// 类别名称
			String levelName = request.getParameter("levelName");// 层次名称
			String majorName = request.getParameter("majorName");// 专业名称
			String remark = request.getParameter("remark");// 备注
			
			System.out.println(className+gradeName+categoryName+levelName+majorName+remark);

			Category category = categoryService.queryOneByName(categoryName);
			Level level = levelService.queryOneByName(levelName);
			Major major = majorService.queryOneByName(majorName);
			System.out.println(major.getName());
			
			BJi bJi = new BJi();
			bJi.setName(className);
			bJi.setGrade(gradeName);
			bJi.setCategory(category);
			bJi.setLevel(level);
			bJi.setMajor(major);
			bJi.setRemark(remark);
			boolean b = bJiService.addBji(bJi);
			if (b) {
				System.out.println("添加成功");
				String hql = "from BJi";
				List<BJi> bList = bJiService.queryAll(hql);
				List total = new ArrayList();
				for(int i=0;i<bList.size();i++) {
					total.add(bJiService.getCount(bList.get(i).getId()));
				}
				request.setAttribute("total", total);
				request.setAttribute("bList", bList);
				request.getRequestDispatcher("/static/module/student/student003/query_result.jsp").forward(request, response);
			}else {
				System.out.println("添加失败");
				response.sendRedirect("/static/module/student/student003/query_result.jsp");
			}
			
		} catch (Exception e) {
		}
		
	}
}
