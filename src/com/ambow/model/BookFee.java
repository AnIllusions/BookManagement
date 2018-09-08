package com.ambow.model;

import java.io.Serializable;

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
public class BookFee extends Identified implements Serializable {

	private String academicyear; 
	private String semester; 
	private float amount;
	@Column(nullable=false)
	private Double payFee;//已缴费金额
	@Column(nullable=false)
	private Double nPayFee;//未缴费金额
	@ManyToOne(targetEntity = Student.class)
	@JoinColumn(name = "student_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Student student;
	@ManyToOne
	@JoinColumn(name="bJi_id",referencedColumnName="id")
	private BJi bJi;
	@ManyToOne(targetEntity = Operator.class)
	@JoinColumn(name = "operator_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Operator operator;
	public String getAcademicyear() {
		return academicyear;
	}
	public void setAcademicyear(String academicyear) {
		this.academicyear = academicyear;
	}
	public String getSemester() {
		return semester;
	}
	public void setSemester(String semester) {
		this.semester = semester;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float amount) {
		this.amount = amount;
	}
	public Double getPayFee() {
		return payFee;
	}
	public void setPayFee(Double payFee) {
		this.payFee = payFee;
	}
	public Double getnPayFee() {
		return nPayFee;
	}
	public void setnPayFee(Double nPayFee) {
		this.nPayFee = nPayFee;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	public BJi getbJi() {
		return bJi;
	}
	public void setbJi(BJi bJi) {
		this.bJi = bJi;
	}
	public Operator getOperator() {
		return operator;
	}
	public void setOperator(Operator operator) {
		this.operator = operator;
	}
	

}
