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
public class BJi extends Identified{
	
	@Column(nullable = false)
	private String name;
	@Column(nullable = false)
	private String grade;
	private String remark;
 
	@ManyToOne(targetEntity = Category.class)
	@JoinColumn(name = "category_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Category category;
	 
	@ManyToOne(targetEntity = Major.class)
	@JoinColumn(name = "major_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Major major;
	 
	@ManyToOne(targetEntity =Level.class)
	@JoinColumn(name = "level_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Level level;

	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Major getMajor() {
		return major;
	}

	public void setMajor(Major major) {
		this.major = major;
	}

	public Level getLevel() {
		return level;
	}

	public void setLevel(Level level) {
		this.level = level;
	}

}
