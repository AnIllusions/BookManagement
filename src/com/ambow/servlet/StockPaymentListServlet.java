package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ambow.service.StockPaymentListService;
import com.ambow.service.impl.StockPaymentListServiceImpl;
import com.ambow.value_of.Stock_Supplier_TextBookPayment;

public class StockPaymentListServlet extends HttpServlet {

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
    String payment = request.getParameter("payment");
    String name = request.getParameter("name");

    if ((payment.equals("all")&&name.equals("all"))||(payment.equals("all")&&name.equals(""))) {
      StockPaymentListService spl = new StockPaymentListServiceImpl();
      List<Stock_Supplier_TextBookPayment> bookPayments =
          spl.getAllStockPayment(Stock_Supplier_TextBookPayment.class);
//      System.out.println(bookPayments.get(0).getSname());
      request.setAttribute("bookPayments", bookPayments);
      request.getRequestDispatcher("/static/module/system/system001/order_list_name2.jsp")
      .forward(request, response);
    }
    else if(payment.equals("0")||payment.equals("1")){
      if(name.equals("")){
        StockPaymentListService spl = new StockPaymentListServiceImpl();
        List<Stock_Supplier_TextBookPayment> bookPayments =
            spl.getStocksByPayment(Stock_Supplier_TextBookPayment.class,payment);
       
        request.setAttribute("bookPayments", bookPayments);
        request.getRequestDispatcher("/static/module/system/system001/order_list_name2.jsp")
        .forward(request, response);
      }
      else{
        StockPaymentListService spl = new StockPaymentListServiceImpl();
        List<Stock_Supplier_TextBookPayment> bookPayments =
            spl.getStocksByPaymentAndName(Stock_Supplier_TextBookPayment.class,payment,name);
        request.setAttribute("bookPayments", bookPayments);
        request.getRequestDispatcher("/static/module/system/system001/order_list_name2.jsp")
        .forward(request, response);
      }
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
