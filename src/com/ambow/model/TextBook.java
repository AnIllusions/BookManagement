package com.ambow.model;

import java.util.Date;

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
public class TextBook extends Identified  {
	String name;
	String author;
	String publish;
	String version;
	Double price;
	int amount;
	Date publishdate;
	String isbn;
	String remark;
	
	@ManyToOne(targetEntity =Supplier.class)
	@JoinColumn(name = "supplier_id", referencedColumnName = "id")
	@Cascade(CascadeType.SAVE_UPDATE)
	private Supplier supplier;

	@ManyToOne(targetEntity =Cell.class)
	@JoinColumn(name = "cell_id", referencedColumnName = "id")
	@Cascade(CascadeType.SAVE_UPDATE)
	private Cell cell;

	public Cell getCell() {
		return cell;
	}
	public void setCell(Cell cell) {
		this.cell = cell;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(Date publishdate) {
		this.publishdate = publishdate;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	public Double getPrice() {
		return price;
	}
	public void setPrice(Double price) {
		this.price = price;
	}
	
}
