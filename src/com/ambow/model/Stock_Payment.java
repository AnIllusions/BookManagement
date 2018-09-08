package com.ambow.model;

import java.util.Date;

import javax.persistence.*;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.ambow.utils.Identified;

@SuppressWarnings("serial")
@Entity
@Table
public class Stock_Payment extends Identified {
  
  private int payment;
  private int amount;
  private String remark;
  private Date receive_date;
  
  @OneToOne(targetEntity=TextBook.class)
  @JoinColumn(name="textBook_id",referencedColumnName="id")
  @Cascade(CascadeType.SAVE_UPDATE)
  private TextBook textBook;
  
  @OneToOne(targetEntity=Supplier.class)
  @JoinColumn(name="supplier_id",referencedColumnName="id")
  @Cascade(CascadeType.SAVE_UPDATE)
  private Supplier supplier;

  public int getPayment() {
    return payment;
  }

  public void setPayment(int payment) {
    this.payment = payment;
  }

  public int getAmount() {
    return amount;
  }

  public void setAmount(int amount) {
    this.amount = amount;
  }

  public String getRemark() {
    return remark;
  }

  public void setRemark(String remark) {
    this.remark = remark;
  }

  public Date getReceive_date() {
    return receive_date;
  }

  public void setReceive_date(Date receive_date) {
    this.receive_date = receive_date;
  }

  public TextBook getTextBook() {
    return textBook;
  }

  public void setTextBook(TextBook textBook) {
    this.textBook = textBook;
  }

  public Supplier getSupplier() {
    return supplier;
  }

  public void setSupplier(Supplier supplier) {
    this.supplier = supplier;
  }
  

}
