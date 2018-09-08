package com.ambow.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

import com.ambow.utils.Identified;

@Entity
@Table
@SuppressWarnings("serial")
public class Operator extends Identified{

	@Column(nullable=false)
	String account;
	@Column(nullable=false)
	String password;
	String name;
	@Column(nullable=false)
	String tel;
	@Column(nullable=false)
	String position;
	@Column(nullable=false)
	String role;
	@Column(nullable=false)
	String remark;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
