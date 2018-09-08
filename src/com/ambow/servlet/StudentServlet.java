package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
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
import com.ambow.model.Student;
import com.ambow.service.BJiService;
import com.ambow.service.CategoryService;
import com.ambow.service.LevelService;
import com.ambow.service.MajorService;
import com.ambow.service.StudentService;
import com.ambow.service.impl.BJiServiceImpl;
import com.ambow.service.impl.CategoryServiceImpl;
import com.ambow.service.impl.LevelServiceImpl;
import com.ambow.service.impl.MajorServiceImpl;
import com.ambow.service.impl.StudentServiceImpl;

public class StudentServlet extends HttpServlet {
	
	StudentService studentService = new StudentServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	MajorService majorService = new MajorServiceImpl();
	LevelService levelService = new LevelServiceImpl();
	BJiService bJiService = new BJiServiceImpl();
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
		}else if(status.equals("query")) {
			String radio = request.getParameter("radio");
			if(radio.equals("学号查询")) {
				queryByNumber(request,response);
			}else {
				queryByOthers(request,response);
			}
		}else if(status.equals("delete")) {
			delete(request,response);
		}else if(status.equals("update")) {
			update(request,response);
		}
	}
	//更新
	public void update(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	//删除学生
	public void delete(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer id = Integer.valueOf(request.getParameter("id"));// 被删除学生的id
			System.out.println(id+"==============");
			Student student = studentService.queryById(Student.class, id);
			Integer b_id = student.getBji().getId();// 该学生所在班级的id
			boolean b = studentService.delete(student);
			if (b) {
				System.out.println("学生删除成功");
				BJi bJi = bJiService.queryById(BJi.class, b_id);
				// 查询该班级全部的学生
				List<Student> sList = studentService.queryAll("from Student where bji_id=" + bJi.getId());
				List total = new ArrayList();
				Integer num = bJiService.getCount(b_id);
				// 查询该班级的人数
				total.add(num);
				request.setAttribute("sList", sList);
				request.setAttribute("total", total);
				request.setAttribute("bj", bJi);
				request.getRequestDispatcher("/static/module/student/student004/query_result.jsp").forward(request,
						response);

			}else {
				response.sendRedirect("/static/module/student/student/student004/del_student_failed.jsp");
			}
		} catch (Exception e) {
		}
	}

	//按其他选择查询
	public void queryByOthers(HttpServletRequest request, HttpServletResponse response) {
		try {
			String categoryName = request.getParameter("categoryName");// 类别名
			String majorName = request.getParameter("majorName");// 专业名
			String levelName = request.getParameter("levelName");// 层次名
			String gradeName = request.getParameter("gradeName");// 年级名
			String className = request.getParameter("className");
			Category category = categoryService.queryOneByName(categoryName);
			Integer c_id = category.getId();
			Major major = majorService.queryOneByName(majorName);
			Integer m_id = major.getId();
			Level level = levelService.queryOneByName(levelName);
			Integer l_id = level.getId();
			BJi bJi = bJiService.queryOneByName(className);
			Integer b_id = bJi.getId();
			String hql = "from BJi where grade='" + gradeName + "'and major_id=" + m_id + " and category_id=" + c_id
					+ " and level_id=" + l_id + " and name='" + className + "'";
			System.out.println(hql);
			List<BJi> bList = bJiService.queryByHql(hql);
			if(bList!=null&&!bList.isEmpty()) {
				//查询该班级全部的学生
				List<Student> sList = studentService.queryAll("from Student where bji_id="+bJi.getId());
				List total = new ArrayList();
				Integer num = bJiService.getCount(b_id);
				System.out.println(num+"----------------");
				// 查询该班级的人数
				total.add(num);
				request.setAttribute("sList", sList);
				request.setAttribute("total", total);
				request.setAttribute("bj", bJi);
				request.getRequestDispatcher("/static/module/student/student004/query_result.jsp").forward(request,
						response);
			}
		} catch (Exception e) {
		}
	}

	//按学号查询
	public void queryByNumber(HttpServletRequest request, HttpServletResponse response) {
		try {
			String number = request.getParameter("number");// 学号
			String hql = "from Student where number = ?";
			String[] param = { number };
			List<Student> sList = studentService.queryByProperty(hql, param);
			if (sList != null && !sList.isEmpty()) {
				System.out.println("按学号查询成功");
				Integer b_id = sList.get(0).getBji().getId();
				List<BJi> bList = new ArrayList<BJi>();
				BJi bJi = bJiService.queryById(BJi.class, b_id);
				bList.add(bJi);
				List total = new ArrayList();
				Integer num = bJiService.getCount(b_id);
				// 查询该班级的人数
				total.add(num);
				request.setAttribute("sList", sList);
				request.setAttribute("total", total);
				request.setAttribute("bj", bJi);
				request.getRequestDispatcher("/static/module/student/student004/query_result.jsp").forward(request,
						response);
			}else {
				System.out.println("查询失败，没有这个学号");
				response.sendRedirect("/static/module/student/student004/query_result.jsp");
			}
		} catch (Exception e) {
		}
	}

	//添加学生
	public void add(HttpServletRequest request, HttpServletResponse response) {
		try {
			
			String number = request.getParameter("number");// 学号
			String name = request.getParameter("name");// 姓名
			String sex = request.getParameter("sex");// 性别
			String birthDate = request.getParameter("birthDate");// 出生日期
			String nativePlace = request.getParameter("nativePlace");// 籍贯
			String address = request.getParameter("address");// 家庭住址
			String tel = request.getParameter("tel");// 电话
			String categoryName = request.getParameter("categoryName");// 类别名称
			String levelName = request.getParameter("levelName");// 层次名称
			String majorName = request.getParameter("majorName");// 专业名称
			String gradeName = request.getParameter("gradeName");// 年级
			String className = request.getParameter("className");// 班级名
			
			System.out.println(number+name+sex+birthDate+nativePlace+address+tel+categoryName+levelName+majorName+gradeName+className);
			Category category = categoryService.queryOneByName(categoryName);
			Integer c_id = category.getId();
			Level level = levelService.queryOneByName(levelName);
			Integer l_id = level.getId();
			Major major = majorService.queryOneByName(majorName);
			Integer m_id = major.getId();
			BJi bJi = bJiService.queryOneByName(className);
			Integer b_id = bJi.getId();
			String hql = "from BJi where grade='" + gradeName + "' and name='" + className +  "' and major_id=" + m_id + " and category_id=" + c_id + " and level_id=" + l_id ;
			System.out.println(hql);
			System.out.println("hello everyone----------");
			List<BJi> list = bJiService.queryByHql(hql);
			System.out.println(list.get(0).getName()+",,,,,");
			if (list != null && !list.isEmpty()) {
				Student student = new Student();
				student.setAddress(address);
				student.setBirthdate(birthDate);
				student.setSname(name);//setName(name);
				student.setNativeplace(nativePlace);//.setSNativePlace(nativePlace);
				student.setNumber(number);
				student.setSex(sex);
				student.setTel(tel);
				student.setBji(bJi);//.setbJi(bJi);
				boolean b = studentService.addStudent(student);
				if (b) {
					System.out.println("学生添加成功");
					//查询该班级全部的学生
					List<Student> sList = studentService.queryAll("from Student where bji_id="+bJi.getId());
					List total = new ArrayList();
					Integer num = bJiService.getCount(b_id);
					System.out.println(num+"----------------");
					// 查询该班级的人数
					total.add(num);

					request.setAttribute("sList", sList);
					request.setAttribute("total", total);
					request.setAttribute("bj", bJi);
					request.getRequestDispatcher("/static/module/student/student004/query_result.jsp").forward(request,
							response);
				}else {
					System.out.println("学生添加失败");
					response.sendRedirect("/static/module/student/student004/query_result.jsp");
				}
			}else {
				System.out.println("不存在学生所选的班级");
				response.sendRedirect("/static/module/student/student004/query_result.jsp");
			}
		} catch (Exception e) {
		}
	}

}
