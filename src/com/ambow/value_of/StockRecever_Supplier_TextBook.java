package com.ambow.value_of;

import java.util.Date;

public class StockRecever_Supplier_TextBook {
  private int  amount;
  private Date rdate;
  private String bookName;
  private  double price;
  private String supplierName;

  public int getAmount() {
    return amount;
  }
  public void setAmount(int amount) {
    this.amount = amount;
  }
  public Date getRdate() {
    return rdate;
  }
  public void setRdate(Date rdate) {
    this.rdate = rdate;
  }
  public String getBookName() {
    return bookName;
  }
  public void setBookName(String bookName) {
    this.bookName = bookName;
  }
  public double getPrice() {
    return price;
  }
  public void setPrice(double price) {
    this.price = price;
  }
  public String getSupplierName() {
    return supplierName;
  }
  public void setSupplierName(String supplierName) {
    this.supplierName = supplierName;
  }
  
}
