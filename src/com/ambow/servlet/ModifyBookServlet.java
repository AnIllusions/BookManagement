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
import com.ambow.service.ModifyObjectService;
import com.ambow.service.impl.ModifyObjectServiceImpl;

public class ModifyBookServlet extends HttpServlet {

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
    int id =Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String isbn = request.getParameter("isbn");
    String author = request.getParameter("author");
    String publisher = request.getParameter("publisher");
    double price = Double.parseDouble(request.getParameter("price"));
    String publishdate = request.getParameter("publishdate");
    String remark = request.getParameter("remark");
    String version = request.getParameter("version");
    
    TextBook book = new TextBook();
    book.setId(id);
    book.setIsbn(isbn);
    book.setName(name);
    book.setAuthor(author);
    book.setPublish(publisher);
    try {
      SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
      Date date;
      date = format.parse(publishdate);
      book.setPublishdate(date);
    } catch (ParseException e) {
      System.out.println("asdfasdfasdfasdfasdfasdf");
      e.printStackTrace();
    }
    book.setPrice(price);
    book.setRemark(remark);
    book.setVersion(version);
    ModifyObjectService modifyObjectService = new ModifyObjectServiceImpl();
    modifyObjectService.saveOrUpdate(book);

    out.print("<center><h2><a href='static/module/main.jsp'> 点击返回</a></h2></center>     ");
    
    
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
