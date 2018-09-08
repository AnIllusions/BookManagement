package com.ambow.service;

import java.util.List;
import com.ambow.value_of.Stock_Supplier_TextBookPayment;

public interface StockPaymentListService {

  List<Stock_Supplier_TextBookPayment> getAllStockPayment(
      Class<Stock_Supplier_TextBookPayment> class1);

  List<Stock_Supplier_TextBookPayment> getStocksByPayment(
      Class<Stock_Supplier_TextBookPayment> class1, String payment);

  List<Stock_Supplier_TextBookPayment> getStocksByPaymentAndName(
      Class<Stock_Supplier_TextBookPayment> class1, String payment, String name);

}
