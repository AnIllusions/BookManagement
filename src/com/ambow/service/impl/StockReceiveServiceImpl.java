package com.ambow.service.impl;

import java.util.List;
import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.model.StockReceive;
import com.ambow.service.StockReceiveService;
import com.ambow.value_of.StockRecever_Supplier_TextBook;

public class StockReceiveServiceImpl implements StockReceiveService {

  @Override
  public List<StockRecever_Supplier_TextBook> getAllSupplier(Class<StockRecever_Supplier_TextBook> class1) {
    GetAllEntityDao getAll = new GetAllEntityDaoImpl();
    String Hql ="SELECT n.AMOUNT as amount,n.RECEIVE_DATE as rdate, bookName,n.price, m.NAME as supplierName  FROM (SELECT  s.AMOUNT,s.RECEIVE_DATE,t.name as bookName,t.price,s.SUPPLIER_ID FROM stockreceive s INNER JOIN textbook t on s.TEXTBOOK_ID = t.ID) n INNER JOIN supplier m WHERE n.SUPPLIER_ID = m.ID";
    return getAll.getListBySQL(Hql, StockRecever_Supplier_TextBook.class);
  }

  @Override
  public List<StockRecever_Supplier_TextBook> getStockRecever_Supplier_TextBookBy(
      Class<StockRecever_Supplier_TextBook> class1, String supplier) {
      GetAllEntityDao getAll = new GetAllEntityDaoImpl();
      String Hql = "SELECT * from (SELECT n.AMOUNT as amount,n.RECEIVE_DATE as rdate, bookName,n.price, m.NAME as supplierName  FROM (SELECT  s.AMOUNT,s.RECEIVE_DATE,t.name as bookName,t.price,s.SUPPLIER_ID FROM stockreceive s INNER JOIN textbook t on s.TEXTBOOK_ID = t.ID) n INNER JOIN supplier m WHERE n.SUPPLIER_ID = m.ID ) ss WHERE ss.supplierName LIKE '%"+supplier+"%';";
      return  getAll.getListBySQL(Hql, StockRecever_Supplier_TextBook.class);
  }

}
