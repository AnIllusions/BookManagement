package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ambow.model.Station;
import com.ambow.service.OperatorService;
import com.ambow.service.impl.OperatorServiceImpl;

public class AddStationServlet extends HttpServlet {

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

   this.doPost(request, response);
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

    response.setContentType("text/html");
    PrintWriter out = response.getWriter();
    String name = request.getParameter("name");
    String contactMan = request.getParameter("contactMan");
    String tel = request.getParameter("tel");
    String address = request.getParameter("address");
    String remark = request.getParameter("remark");
    
    Station station = new Station();
    station.setAddress(address);
    station.setContactMan(contactMan);
    station.setName(name);
    station.setRemark(remark);
    station.setTel(tel);
    
    OperatorService ops = new OperatorServiceImpl();
    boolean b = ops.addAdmin(station);
    
    if(b){
      out.print("<center>添加成功</center>");
    }else
      out.print("<center>添加失败</center>");
    
    
    out.flush();
    out.close();
  }

}
