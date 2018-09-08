package com.ambow.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Cascade;
import org.hibernate.annotations.CascadeType;

import com.ambow.utils.Identified;

@SuppressWarnings("serial")
@Entity
@Table
public class Deliver_To_Station extends Identified {

	private Date deliver_date ;
	@ManyToOne(targetEntity = Operator.class)
	@JoinColumn(name = "operator_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Operator operator;
	@OneToOne(targetEntity=Station.class)
	@JoinColumn(name="station_id",referencedColumnName="id",unique=true)
	private Station station;
	@ManyToOne(targetEntity =TextBook.class)//教材
	@JoinColumn(name = "textbook_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private TextBook textBook ;
	public Date getDeliver_date() {
		return deliver_date;
	}
	public void setDeliver_date(Date deliver_date) {
		this.deliver_date = deliver_date;
	}
	public Operator getOperator() {
		return operator;
	}
	public void setOperator(Operator operator) {
		this.operator = operator;
	}
	public Station getStation() {
		return station;
	}
	public void setStation(Station station) {
		this.station = station;
	}
	public TextBook getTextBook() {
		return textBook;
	}
	public void setTextBook(TextBook textBook) {
		this.textBook = textBook;
	}
	
}
