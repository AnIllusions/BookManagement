package com.ambow.dao.impl;

import java.util.List;

import com.ambow.dao.StudentDao;
import com.ambow.model.Student;
import com.ambow.utils.BaseDAO;



public class StudentDaoImpl implements StudentDao{

	@Override
	public boolean add(Student student) {
		return BaseDAO.add(student);
	}

	@Override
	public List<Student> queryAll(String hql) {
		return BaseDAO.queryAll(hql);
	}

	@Override
	public Student queryById(Class c, Integer id) {
		return (Student) BaseDAO.get(c, id);
	}

	@Override
	public List<Student> queryByProperty(String hql, String[] param) {
		return BaseDAO.query(hql, param);
	}

	@Override
	public boolean delete(Student student) {
		return BaseDAO.delete(student);
	}

}
