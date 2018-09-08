package com.ambow.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;


import com.ambow.utils.Identified;
 
@SuppressWarnings("serial")
@Entity
@Table
public class Level extends Identified  {
	@Column(nullable=false)
	private String name;
    private String remark;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	} 
	
}
