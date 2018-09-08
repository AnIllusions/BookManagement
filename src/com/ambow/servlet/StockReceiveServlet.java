package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ambow.model.StockReceive;
import com.ambow.service.StockReceiveService;
import com.ambow.service.impl.StockReceiveServiceImpl;
import com.ambow.value_of.StockRecever_Supplier_TextBook;

public class StockReceiveServlet extends HttpServlet {

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
    
    String supplier = request.getParameter("supplier");
    if(supplier.equals("all")){
      StockReceiveService srs = new StockReceiveServiceImpl();
      List<StockRecever_Supplier_TextBook> suppliers =  srs.getAllSupplier(StockRecever_Supplier_TextBook.class);
      request.setAttribute("suppliers", suppliers);
      request.getRequestDispatcher("/static/module/system/system001/order_list_name.jsp")
      .forward(request, response);
    }else{
      StockReceiveService srs = new StockReceiveServiceImpl();
      List<StockRecever_Supplier_TextBook> suppliers = srs.getStockRecever_Supplier_TextBookBy(StockRecever_Supplier_TextBook.class,supplier);
      request.setAttribute("suppliers", suppliers);
      out.println(suppliers.get(0).getBookName());
      request.getRequestDispatcher("/static/module/system/system001/order_list_name.jsp")
      .forward(request, response);
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
