package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ambow.model.Operator;
import com.ambow.model.Station;
import com.ambow.model.Supplier;
import com.ambow.model.TextBook;
import com.ambow.service.DeleteAllService;
import com.ambow.service.OperatorService;
import com.ambow.service.StationListService;
import com.ambow.service.SupplierListService;
import com.ambow.service.TextBookListService;
import com.ambow.service.impl.DeleteAllServiceImpl;
import com.ambow.service.impl.OperatorServiceImpl;
import com.ambow.service.impl.StationListServiceImpl;
import com.ambow.service.impl.SupplierListServiceImpl;
import com.ambow.service.impl.TextBookListServiceImpl;

public class DeleteAllServlet extends HttpServlet {

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
    String name = request.getParameter("name");
    int id = Integer.parseInt(request.getParameter("id"));
    if(name.equals("user")){
      
      DeleteAllService deleteAllService = new DeleteAllServiceImpl();
      deleteAllService.deleteEntity(Operator.class,id);
      
      OperatorService os = new OperatorServiceImpl();
      List<Operator> ops = os.getAllAdmin(Operator.class);
      request.setAttribute("ops", ops);
      request.getRequestDispatcher("/static/module/system/system002/user_list.jsp")
          .forward(request, response);
    }else if(name.equals("book")){
      //删除教材
      DeleteAllService deleteAllService = new DeleteAllServiceImpl();
      deleteAllService.deleteEntity(TextBook.class, id);
      //返回全部教材
      TextBookListService tb = new TextBookListServiceImpl();
      List<TextBook> books =  tb.getAllBooks(TextBook.class);
      request.setAttribute("books", books);
      request.getRequestDispatcher("/static/module/book/book001/book_list.jsp")
        .forward(request, response);
    }else if(name.equals("supplier")){
      //删除供应商
      DeleteAllService deleteAllService = new DeleteAllServiceImpl();
      deleteAllService.deleteEntity(Supplier.class, id);
      //返回全部供应商
      SupplierListService  supplierListService = new SupplierListServiceImpl();
      List<Supplier> suppliers = supplierListService.getAllSupplier(Supplier.class);
      request.setAttribute("suppliers", suppliers);
      request.getRequestDispatcher("/static/module/book/book002/supplier_list.jsp")
        .forward(request, response);
    }else if(name.equals("station")){
      //删除函授站
      /*
       * 根据类名 + id 主键 删除
       */
      DeleteAllService deleteAllService = new DeleteAllServiceImpl();
      deleteAllService.deleteEntity(Station.class, id);
      //返回全部函授站
      StationListService stationListService = new StationListServiceImpl();
      List<Station> stations = stationListService
              .getAllStation(Station.class);
      request.setAttribute("stations", stations);
      
      request.getRequestDispatcher(
              "/static/module/book/book003/station_list.jsp").forward(
              request, response);
      
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
