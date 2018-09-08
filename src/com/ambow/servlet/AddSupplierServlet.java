package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ambow.model.Supplier;
import com.ambow.service.OperatorService;
import com.ambow.service.impl.OperatorServiceImpl;

public class AddSupplierServlet extends HttpServlet {

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
    String name = request.getParameter("SupplierName");
    String contactMan = request.getParameter("lixiren");
    String tel = request.getParameter("dianhua");
    String address = request.getParameter("dizhi");
    String email = request.getParameter("email");
    String remark = request.getParameter("beizhu");
    
    Supplier supplier = new Supplier();
    supplier.setAddress(address);
    supplier.setContactMan(contactMan);
    supplier.setEmail(email);
    supplier.setName(name);
    supplier.setRemark(remark);
    supplier.setTel(tel);
    
    OperatorService ops = new OperatorServiceImpl();
    boolean b = ops.addAdmin(supplier);
    
    if(b){
      out.print("<center>添加成功</center>");
    }else
      out.print(" <br/><br/><br/><br/><br/> <center>wrong</center>");
    
    
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
