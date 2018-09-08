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
public class Deliver_To_Student extends Identified{

	private Date deliver_time;  
	
	@ManyToOne(targetEntity = Package_book.class)
	@JoinColumn(name = "package_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Package_book packageBook;
	 
	@ManyToOne(targetEntity = Student.class)
	@JoinColumn(name = "student_id", referencedColumnName = "id", unique = true)
	private Student student;
	 
	@ManyToOne(targetEntity = Operator.class)
	@JoinColumn(name = "operator_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Operator operator;

	public Date getDeliver_time() {
		return deliver_time;
	}

	public void setDeliver_time(Date deliver_time) {
		this.deliver_time = deliver_time;
	}

	public Package_book getPackageBook() {
		return packageBook;
	}

	public void setPackageBook(Package_book packageBook) {
		this.packageBook = packageBook;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	public Operator getOperator() {
		return operator;
	}

	public void setOperator(Operator operator) {
		this.operator = operator;
	}


}
