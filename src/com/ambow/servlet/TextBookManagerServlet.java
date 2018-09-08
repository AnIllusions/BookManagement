package com.ambow.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ambow.model.TextBook;
import com.ambow.service.OperatorService;
import com.ambow.service.TextBookManagerService;
import com.ambow.service.impl.OperatorServiceImpl;
import com.ambow.service.impl.TextBookManagerServiceImpl;

public class TextBookManagerServlet extends HttpServlet {
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
    
    String isbn = request.getParameter("isbn");
    String name = request.getParameter("name");
    String author = request.getParameter("author");
    String version = request.getParameter("version");
    String publish = request.getParameter("publish");
    String publishdate = request.getParameter("publishdate");
    String price = request.getParameter("price");
    String remark = request.getParameter("remark");
    
    TextBook book = new TextBook();
    book.setIsbn(isbn);
    book.setAuthor(author);
    book.setName(name);
    book.setPublish(publish);
    book.setVersion(version);
    book.setRemark(remark);
    book.setPrice(Double.parseDouble(price));
    try {
      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      Date date;
      date = format.parse(publishdate);
      book.setPublishdate(date);
    } catch (ParseException e) {
      System.out.println("asdfasdfasdfasdfasdfasdf");
      e.printStackTrace();
    }
    System.out.println(book.getName());
    System.out.println(book.getIsbn());
    System.out.println(book.getPublish());
    System.out.println(book.getPublishdate());
    
    OperatorService ops = new OperatorServiceImpl();
    boolean b = ops.addAdmin(book);
    if(b){
      out.print("<center>添加成功</center>");
    }else
      out.print("<center>错误了</center>");

    out.flush();
    out.close();
  }
  public void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    this.doGet(request, response);
  }

}
