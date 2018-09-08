package com.ambow.model;

import java.sql.Date;

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
public class StockCheck extends Identified  {
	@Column(nullable=false)
	String name;
	@Column(nullable=false)
	int account;
	@Column(nullable=false)
	String remark;
	@Column(nullable=false)
	Date check_date;
	@ManyToOne(targetEntity = TextBook.class)
	@JoinColumn(name = "textbook_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	TextBook textbook;
	@ManyToOne(targetEntity = Cell.class)
	@JoinColumn(name = "cell_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	Cell cell;
	@ManyToOne(targetEntity = Operator.class)
	@JoinColumn(name = "operator_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	Operator operator;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAccount() {
		return account;
	}
	public void setAccount(int account) {
		this.account = account;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Date getCheck_date() {
		return check_date;
	}
	public void setCheck_date(Date check_date) {
		this.check_date = check_date;
	}
	public TextBook getTextbook() {
		return textbook;
	}
	public void setTextbook(TextBook textbook) {
		this.textbook = textbook;
	}
	public Cell getCell() {
		return cell;
	}
	public void setCell(Cell cell) {
		this.cell = cell;
	}
	public Operator getOperator() {
		return operator;
	}
	public void setOperator(Operator operator) {
		this.operator = operator;
	}
	
	
}

