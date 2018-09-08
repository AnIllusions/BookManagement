package com.ambow.model;


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
public class Student extends Identified {
	@Column(nullable=false)
	private String number; 
	@Column(nullable=false)
	private String sname; 
	@Column(nullable=false)
	private String sex; 
	@Column(nullable=false)
	private String birthdate; 
	@Column(nullable=false)
	private String nativeplace; 
	@Column(nullable=false)
	private String address; 
	@Column(nullable=false)
	private String tel; 
	
	@ManyToOne(targetEntity =BJi.class) 
	@JoinColumn(name = "bji_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private BJi bji;

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getBirthdate() {
		return birthdate;
	}

	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}

	public String getNativeplace() {
		return nativeplace;
	}

	public void setNativeplace(String nativeplace) {
		this.nativeplace = nativeplace;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public BJi getBji() {
		return bji;
	}

	public void setBji(BJi bji) {
		this.bji = bji;
	}

}
