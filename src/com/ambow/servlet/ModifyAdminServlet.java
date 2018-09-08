package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ambow.model.Operator;
import com.ambow.service.ModifyObjectService;
import com.ambow.service.impl.ModifyObjectServiceImpl;

public class ModifyAdminServlet extends HttpServlet {

  /**
   * The doGet method of the servlet. <br>
   * 
   * This method is called when a form has its tag value method equals to get.
   * 
   * @param request the request send by the client to the server
   * @param response the response send by the server to the client
   * @throws ServletException if an error occurred
   * @throws IOException if an error occurred
   */
  public void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

	  request.setCharacterEncoding("utf-8");//解决乱码
		 response.setContentType("text/html;charset=utf-8");
		 
    PrintWriter out = response.getWriter();

    int id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String account = request.getParameter("account");
    String password = request.getParameter("password");
    String tel = request.getParameter("tel");
    String position = request.getParameter("position");
    String remark = request.getParameter("remark");
    String role = request.getParameter("role");

    Operator op = new Operator();
    op.setId(id);
    op.setAccount(account);
    op.setName(name);
    op.setPassword(password);
    op.setPosition(position);
    op.setTel(tel);
    op.setRole(role);
    op.setRemark(remark);

    ModifyObjectService modifyObjectService = new ModifyObjectServiceImpl();
    modifyObjectService.saveOrUpdate(op);

    out.print("<center><h2><a href='<%=path%>/AdminListServlet?role=all'> 点击返回</a></h2></center>     ");
      

    out.flush();
    out.close();
  }

  /**
   * The doPost method of the servlet. <br>
   * 
   * This method is called when a form has its tag value method equals to post.
   * 
   * @param request the request send by the client to the server
   * @param response the response send by the server to the client
   * @throws ServletException if an error occurred
   * @throws IOException if an error occurred
   */
  public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    this.doGet(request, response);

  }

}
