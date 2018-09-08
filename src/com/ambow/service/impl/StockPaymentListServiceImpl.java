package com.ambow.service.impl;

import java.util.List;
import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.service.StockPaymentListService;
import com.ambow.value_of.Stock_Supplier_TextBookPayment;

public class StockPaymentListServiceImpl implements StockPaymentListService {

  @Override
  public List<Stock_Supplier_TextBookPayment> getAllStockPayment(
      Class<Stock_Supplier_TextBookPayment> class1) {
    GetAllEntityDao getAll = new GetAllEntityDaoImpl();
    String Hql="SELECT t.name as tname,sp.payment,sp.amount,sp.receive_date,sp.sname  FROM "
        + "(SELECT st.amount,st.payment,st.receive_date,st.textBook_id as tid ,s.name as sname FROM stock_payment st INNER JOIN supplier s ON s.id = st.supplier_id) sp"
        +" INNER JOIN textbook t ON sp.tid = t.id";
    return getAll.getListBySQL(Hql,class1 );    
  }

  @Override
  public List<Stock_Supplier_TextBookPayment> getStocksByPayment(
      Class<Stock_Supplier_TextBookPayment> class1, String payment) {
    GetAllEntityDao getAll = new GetAllEntityDaoImpl();
    String Hql="SELECT * FROM (SELECT t.name as tname,sp.payment,sp.amount,sp.receive_date,sp.sname  FROM (SELECT st.amount,st.payment,st.receive_date,st.textBook_id as tid ,s.name as sname FROM stock_payment st INNER JOIN supplier s ON s.id = st.supplier_id) sp INNER JOIN textbook t ON sp.tid = t.id ) sss WHERE sss.payment ="
        +Integer.parseInt(payment);
    return getAll.getListBySQL(Hql,class1);    
  }

  @Override
  public List<Stock_Supplier_TextBookPayment> getStocksByPaymentAndName(
      Class<Stock_Supplier_TextBookPayment> class1, String payment, String name) {
    GetAllEntityDao getAll = new GetAllEntityDaoImpl();
    String Hql="SELECT * FROM (SELECT t.name as tname,sp.payment,sp.amount,sp.receive_date,sp.sname  FROM (SELECT st.amount,st.payment,st.receive_date,st.textBook_id as tid ,s.name as sname FROM stock_payment st INNER JOIN supplier s ON s.id = st.supplier_id) sp INNER JOIN textbook t ON sp.tid = t.id ) sss WHERE sss.payment ="
        +Integer.parseInt(payment)+"sss.sname LIKE '%"+name+"%'";
    return getAll.getListBySQL(Hql,class1);    
  }

 

}
