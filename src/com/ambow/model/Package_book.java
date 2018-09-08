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
public class Package_book extends Identified   {
	
	@Column(nullable=false)
	private String academy_year; 
	@Column(nullable=false)
	private String semester; 
	private String pdescription; 
	@Column(nullable=false)
	private String grade;  
	@ManyToOne(targetEntity = Category.class)
	@JoinColumn(name = "category_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Category category;
	 
	@ManyToOne(targetEntity =BJi.class)
	@JoinColumn(name = "bji_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private BJi bji;
	
	@ManyToOne(targetEntity = Major.class)
	@JoinColumn(name = "major_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Major major;
	 
	@ManyToOne(targetEntity =Level.class)
	@JoinColumn(name = "level_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Level level;
	
	@ManyToOne(targetEntity =Operator.class)
	@JoinColumn(name = "operator_id", referencedColumnName = "id", nullable = false)
	@Cascade(CascadeType.SAVE_UPDATE)
	private Operator operator;

	public String getAcademy_year() {
		return academy_year;
	}

	public void setAcademy_year(String academy_year) {
		this.academy_year = academy_year;
	}

	public String getSemester() {
		return semester;
	}

	public void setSemester(String semester) {
		this.semester = semester;
	}

	public BJi getBji() {
		return bji;
	}

	public void setBji(BJi bji) {
		this.bji = bji;
	}
	public String getPdescription() {
		return pdescription;
	}

	public void setPdescription(String pdescription) {
		this.pdescription = pdescription;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
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

	public Operator getOperator() {
		return operator;
	}

	public void setOperator(Operator operator) {
		this.operator = operator;
	}
	
}
