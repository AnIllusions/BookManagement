package com.ambow.model;
/**
*@author admin
*@version 创建时间：2018年1月3日上午11:30:19
*/
public class TBookFee {

	private Integer id;//主键
	private Long TotalPay;//总缴费
	private Student student;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Long getTotalPay() {
		return TotalPay;
	}
	public void setTotalPay(Long totalPay) {
		TotalPay = totalPay;
	}
	public Student getStudent() {
		return student;
	}
	public void setStudent(Student student) {
		this.student = student;
	}
	
}
