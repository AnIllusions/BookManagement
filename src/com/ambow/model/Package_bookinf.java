package com.ambow.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.ambow.utils.Identified;

@SuppressWarnings("serial")
@Table
@Entity
public class Package_bookinf extends Identified{

	@ManyToOne(targetEntity = Package_book.class)
	@JoinColumn(name = "package_book_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Package_book package_book;
	@ManyToOne(targetEntity = TextBook.class)
	@JoinColumn(name = "textbook_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private TextBook textbook;
	public Package_book getPackage_book() {
		return package_book;
	}
	public void setPackage_book(Package_book package_book) {
		this.package_book = package_book;
	}
	public TextBook getTextbook() {
		return textbook;
	}
	public void setTextbook(TextBook textbook) {
		this.textbook = textbook;
	}
	 
}
