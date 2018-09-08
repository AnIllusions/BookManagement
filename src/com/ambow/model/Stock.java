package com.ambow.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.ambow.utils.Identified;
@Table
@Entity
public class Stock extends Identified{

	private static final long serialVersionUID = -7188753905634934840L;
	@Column(nullable=false)
	 int amount;
	@ManyToOne(targetEntity = Cell.class)
	@JoinColumn(name = "cell_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Cell cell;
	@ManyToOne(targetEntity = TextBook.class)
	@JoinColumn(name = "textbook_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private TextBook textBook;
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Cell getCell() {
		return cell;
	}
	public void setCell(Cell cell) {
		this.cell = cell;
	}
	public TextBook getTextBook() {
		return textBook;
	}
	public void setTextBook(TextBook textBook) {
		this.textBook = textBook;
	}
	
}
