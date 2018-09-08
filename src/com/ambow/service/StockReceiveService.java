package com.ambow.service;

import java.util.List;
import com.ambow.value_of.StockRecever_Supplier_TextBook;

public interface StockReceiveService {

  List<StockRecever_Supplier_TextBook> getAllSupplier(Class<StockRecever_Supplier_TextBook> class1);

  List<StockRecever_Supplier_TextBook> getStockRecever_Supplier_TextBookBy(
      Class<StockRecever_Supplier_TextBook> class1, String supplier);

}
