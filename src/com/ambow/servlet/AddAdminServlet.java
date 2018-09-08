package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ambow.model.Operator;
import com.ambow.service.OperatorService;
import com.ambow.service.impl.OperatorServiceImpl;

public class AddAdminServlet extends HttpServlet {

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
    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    String account = request.getParameter("account");
    String name = request.getParameter("name");
    String password = request.getParameter("password");
    String tel = request.getParameter("tel");
    String post = request.getParameter("post");
    String remark = request.getParameter("remark");
    String role = request.getParameter("role");
    
    Operator op = new Operator();
    op.setAccount(account);
    op.setName(name);
    op.setPassword(password);
    op.setPosition(post);
    op.setTel(tel);
    op.setRole(role);
    op.setRemark(remark);

    System.out.println(op.getAccount());
    
    
    OperatorService ops = new OperatorServiceImpl();
    boolean b = ops.addAdmin(op);
    
    if(b){
      System.out.println("corret");
      out.println("<center>corret</center>");
      /*response.sendRedirect("/static/module/main.jsp");*/
    }else{
     out.println("<center>wrong</center>");
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
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
