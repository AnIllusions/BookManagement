package com.ambow.utils;


import java.io.Serializable;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;
@MappedSuperclass
public class Identified implements Serializable {
	//封装ID
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id@GeneratedValue(strategy=GenerationType.IDENTITY)	
	int id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
}
