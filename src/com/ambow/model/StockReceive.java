package com.ambow.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.ambow.utils.Identified;

 
@SuppressWarnings("serial")
@Entity
@Table
public class StockReceive extends Identified   {
	@Column(nullable=false)
	private int amount; 
	@Column(nullable=false)
	private String remark; 
	@Column(nullable=false)
	private Date receive_date; 
	 
	@ManyToOne(targetEntity = Operator.class)
	@JoinColumn(name = "operator_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Operator operator;
	 
	@ManyToOne(targetEntity = Supplier.class)
	@JoinColumn(name = "supplier_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Supplier supplier;
	@ManyToOne(targetEntity = TextBook.class)
	@JoinColumn(name = "textbook_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private TextBook  textBook;
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
	public Operator getOperator() {
		return operator;
	}
	public void setOperator(Operator operator) {
		this.operator = operator;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public TextBook getTextBook() {
		return textBook;
	}
	public void setTextBook(TextBook textBook) {
		this.textBook = textBook;
	}
	
}
