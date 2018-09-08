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
import com.ambow.model.BookFee;
import com.ambow.model.Category;
import com.ambow.model.Level;
import com.ambow.model.Major;
import com.ambow.model.Student;
import com.ambow.service.BJiService;
import com.ambow.service.BookFeeService;
import com.ambow.service.CategoryService;
import com.ambow.service.LevelService;
import com.ambow.service.MajorService;
import com.ambow.service.StudentService;
import com.ambow.service.impl.BJiServiceImpl;
import com.ambow.service.impl.BookFeeServiceImpl;
import com.ambow.service.impl.CategoryServiceImpl;
import com.ambow.service.impl.LevelServiceImpl;
import com.ambow.service.impl.MajorServiceImpl;
import com.ambow.service.impl.StudentServiceImpl;

public class BookFeeServlet extends HttpServlet {
	StudentService studentService = new StudentServiceImpl();
	CategoryService categoryService = new CategoryServiceImpl();
	MajorService majorService = new MajorServiceImpl();
	LevelService levelService = new LevelServiceImpl();
	BJiService bJiService = new BJiServiceImpl();
	//DeliverStudentService dStudentService = new DeliverStudentServiceImpl();
	BookFeeService bFeeService = new BookFeeServiceImpl();

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
		String status = request.getParameter("status");
		System.out.println(status + "bbbbbbbbb");
		if (status.equals("queryStudent")) {
			String radio = request.getParameter("radio");
			if (radio.equals("学号查询")) {
				queryByNumber(request, response, status);// 按学号查询
			} else {
				queryByOthers(request, response, status);// 按其他查询
			}
		} else if (status.equals("pay")) {
			pay(request, response);// 缴费
		} else if (status.equals("queryStudent2")) {
			String radio = request.getParameter("radio");
			if (radio.equals("学号查询")) {
				queryByNumber(request, response, status);// 按学号查询
			} else {
				queryByOthers(request, response, status);// 按其他查询
			}
		} else if (status.equals("get")) {
			get(request, response);// 获取学生的详细信息
		}else if (status.equals("queryStudent3")) {
			String radio = request.getParameter("radio");
			if (radio.equals("学号查询")) {
				queryByNumber(request, response, status);// 按学号查询
			} else {
				queryByOthers(request, response, status);// 按其他查询
			}
		}
	}

	// 获取学生的详细信息
	private void get(HttpServletRequest request, HttpServletResponse response) {
		try {
			Integer student_id = Integer.valueOf(request.getParameter("id"));
			Student student = studentService.queryById(Student.class, student_id);
			request.setAttribute("student", student);
			request.getRequestDispatcher("/static/module/student/student005/student_detail.jsp").forward(request,
					response);
		} catch (Exception e) {
		}
	}

	// 缴费
	private void pay(HttpServletRequest request, HttpServletResponse response) {
		try {
			String year = request.getParameter("year");// 学年
			String term = request.getParameter("term");// 学期
			Integer student_id = Integer.valueOf(request.getParameter("student_id"));// 学生的id
			Double pay = Double.valueOf(request.getParameter("payment"));// 交的钱
			System.out.println(year + term + pay + "hhhhhhhhhhh");
			String hql = "from BookFee where student_id=" + student_id + " and semester=? and academicyear=?";
			String[] param = { term, year };
			BookFee bookFee = bFeeService.query(hql, param);
			if (bookFee != null) {
				bookFee.setPayFee(pay);
				boolean b = bFeeService.update(bookFee);
				if (b) {
					System.out.println("缴费成功");
					request.getRequestDispatcher("/static/module/student/student005/fee_query_query.jsp").forward(request,
							response);
				} else {
					System.out.println("缴费失败");
					response.sendRedirect("/static/module/student/student005/pay_fee_query.jsp");
				}
			} else {
				System.out.println("缴费失败");
				response.sendRedirect("/static/module/student/student005/pay_fee_query.jsp");
			}
		} catch (Exception e) {
		}
	}

	// 按其他查询
	private void queryByOthers(HttpServletRequest request, HttpServletResponse response, String status) {
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
			String hql = "from BJi where grade='" + gradeName + "' and major_id=" + m_id + " and category_id=" + c_id
					+ " and level_id=" + l_id + " and name='" + className + "'";
			System.out.println(hql);
			List<BJi> bList = bJiService.queryByHql(hql);
			if (bList != null && !bList.isEmpty()) {
				// 查询该班级全部的学生
				List<Student> sList = studentService.queryAll("from Student where bji_id=" + bJi.getId());
				if (sList != null && !sList.isEmpty()) {
					List totalPay = new ArrayList();//已缴金额
					List totalnPay = new ArrayList();//需缴总金额
					List totalmPay = new ArrayList();//补交或退
					for (int i = 0; i < sList.size(); i++) {
						Double nPay = 0.0;
						Double Pay = 0.0;
						Double mPay = 0.0;
						List<BookFee> bFees = bFeeService
								.queryByHql("from BookFee where student_id=" + sList.get(i).getId());
						if (bFees != null && !bFees.isEmpty()) {
							if (status.equals("queryStudent")) {
								for (int j = 0; j < bFees.size(); j++) {
									nPay = nPay + bFees.get(j).getnPayFee();
								}
							} else if(status.equals("queryStudent2")){
								for (int j = 0; j < bFees.size(); j++) {
									Pay = Pay + bFees.get(j).getPayFee();
								}
							}else if(status.equals("queryStudent3")) {
								for (int j = 0; j < bFees.size(); j++) {
									nPay = nPay + bFees.get(j).getnPayFee();
									Pay = Pay + bFees.get(j).getPayFee();
									mPay = nPay-Pay;
								}
							}
						}
						totalPay.add(Pay);
						totalnPay.add(nPay);
						totalmPay.add(mPay);
					}
					List total = new ArrayList();
					Integer num = bJiService.getCount(b_id);
					System.out.println(num + "----------------");
					// 查询该班级的人数
					total.add(num);
					request.setAttribute("sList", sList);
					request.setAttribute("total", total);
					request.setAttribute("bj", bJi);
					request.setAttribute("totalPay", totalPay);
					request.setAttribute("totalnPay", totalnPay);
					request.setAttribute("totalmPay", totalmPay);
					if (status.equals("queryStudent")) {
						request.getRequestDispatcher("/static/module/student/student005/pay_fee_query_result.jsp")
								.forward(request, response);
					} else if(status.equals("queryStudent2")){
						request.getRequestDispatcher("static/module/student/student005/fee_query.jsp")
								.forward(request, response);
					}else if(status.equals("queryStudent3")) {
						request.getRequestDispatcher("/static/module/student/student005/fee_statistic_query_result.jsp")
						.forward(request, response);
					}
				}
			} else {
				if (status.equals("queryStudent")) {
					System.out.println("查询失败，没有这个学号");
					response.sendRedirect("/static/module/student/student005/pay_fee_query.jsp");
				} else if(status.equals("queryStudent2")){
					System.out.println("查询失败，没有这个学号");
					response.sendRedirect("/static/module/student/student005/fee_query.jsp");
				}else if(status.equals("queryStudent3")) {
					System.out.println("查询失败，没有这个学号");
					response.sendRedirect("/static/module/student/student005/fee_statistic_query.jsp");
				}
				
			}
		} catch (Exception e) {
		}

	}

	// 按学号查询
	private void queryByNumber(HttpServletRequest request, HttpServletResponse response, String status) {
		try {
			String number = request.getParameter("number");// 学号
			String hql = "from Student where number = ?";
			String[] param = { number };
			List<Student> sList = studentService.queryByProperty(hql, param);
			if (sList != null && !sList.isEmpty()) {
				System.out.println("按学号查询成功");
				Integer b_id = sList.get(0).getBji().getId();//.getBJi().getId();
				List<BJi> bList = new ArrayList<BJi>();
				BJi bJi = bJiService.queryById(BJi.class, b_id);
				bList.add(bJi);
				List total = new ArrayList();
				Integer num = bJiService.getCount(b_id);
				// 查询该班级的人数
				total.add(num);
				Integer student_id = sList.get(0).getId();// 该学号对应的id
				List<BookFee> bFees = bFeeService.queryByHql("from BookFee where student_id=" + student_id);
				if (bFees != null && !bFees.isEmpty()) {
					List totalPay = new ArrayList();
					List totalnPay = new ArrayList();
					List totalmPay = new ArrayList();
					Double nPay = 0.0;
					Double Pay = 0.0;
					Double mPay = 0.0;
					if (status.equals("queryStudent")) {
						for (int j = 0; j < bFees.size(); j++) {
							nPay = nPay + bFees.get(j).getnPayFee();
						}
					} else if(status.equals("queryStudent2")){
						for (int j = 0; j < bFees.size(); j++) {
							Pay = Pay + bFees.get(j).getPayFee();
						}
					}else{
						System.out.println("哈哈哈哈哈");
						for (int j = 0; j < bFees.size(); j++) {
							nPay = nPay + bFees.get(j).getnPayFee();
							Pay = Pay + bFees.get(j).getPayFee();
							mPay = nPay-Pay;
							System.out.println("fff"+nPay+Pay+mPay);
						}
					}
					totalPay.add(Pay);
					totalnPay.add(nPay);
					totalmPay.add(mPay);
					request.setAttribute("totalPay", totalPay);
					request.setAttribute("totalnPay", totalnPay);
					request.setAttribute("totalmPay", totalmPay);
					request.setAttribute("total", total);
					request.setAttribute("bj", bJi);
					request.setAttribute("sList", sList);
					if (status.equals("queryStudent")) {
						request.getRequestDispatcher("/static/module/student/student005/pay_fee_query_result.jsp")
								.forward(request, response);
					} else if(status.equals("queryStudent2")){
						request.getRequestDispatcher("/static/module/student/student005/fee_query.jsp")
								.forward(request, response);
					}else if(status.equals("queryStudent3")) {
						request.getRequestDispatcher("/static/module/student/student005/fee_statistic_query_result.jsp")
						.forward(request, response);
					}
				}
			}else {
				if (status.equals("queryStudent")) {
					System.out.println("查询失败，没有这个学号");
					response.sendRedirect("/static/module/student/student005/pay_fee_query.jsp");
				} else if(status.equals("queryStudent002")){
					System.out.println("查询失败，没有这个学号");
					response.sendRedirect("/static/module/student/student005/fee_query.jsp");
				}else if(status.equals("queryStudent003")) {
					System.out.println("查询失败，没有这个学号");
					response.sendRedirect("/static/module/student/student005/fee_statistic_query.jsp");
				}
				
			}
		} catch (Exception e) {
		}
	}

}
