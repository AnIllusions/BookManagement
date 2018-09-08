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
public class StockMove extends Identified   {
	
	@Column(nullable=false)
	private int amount; 
	@Column(nullable=false)
	private String remark; 
	@Column(nullable=false)
	private Date move_date;  
	 
	@ManyToOne(targetEntity = Operator.class)
	@JoinColumn(name = "operator_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Operator operator;
	@ManyToOne(targetEntity = Cell.class)
	@JoinColumn(name = "to_cell_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Cell to_cell;
	@ManyToOne(targetEntity = Cell.class)
	@JoinColumn(name = "from_cell_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Cell from_cell;
	@ManyToOne(targetEntity = TextBook.class)
	@JoinColumn(name = "textbook_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private TextBook textbook;
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
	public Date getMove_date() {
		return move_date;
	}
	public void setMove_date(Date move_date) {
		this.move_date = move_date;
	}
	public Operator getOperator() {
		return operator;
	}
	public void setOperator(Operator operator) {
		this.operator = operator;
	}
	public Cell getTo_cell() {
		return to_cell;
	}
	public void setTo_cell(Cell to_cell) {
		this.to_cell = to_cell;
	}
	public Cell getFrom_cell() {
		return from_cell;
	}
	public void setFrom_cell(Cell from_cell) {
		this.from_cell = from_cell;
	}
	public TextBook getTextbook() {
		return textbook;
	}
	public void setTextbook(TextBook textbook) {
		this.textbook = textbook;
	}
	 
}
