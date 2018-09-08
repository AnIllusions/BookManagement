package com.ambow.service.impl;

import java.util.List;

import com.ambow.dao.StudentDao;
import com.ambow.dao.impl.StudentDaoImpl;
import com.ambow.model.Student;
import com.ambow.service.StudentService;


public class StudentServiceImpl implements StudentService {
	StudentDao dao = new StudentDaoImpl();
	@Override
	public boolean addStudent(Student student) {
		return this.dao.add(student);
	}
	@Override
	public List<Student> queryAll(String hql) {
		return this.dao.queryAll(hql);
	}
	@Override
	public Student queryById(Class c, Integer id) {
		return this.dao.queryById(c,id);
	}
	@Override
	public List<Student> queryByProperty(String hql, String[] param) {
		return this.dao.queryByProperty(hql,param);
	}
	@Override
	public boolean delete(Student student) {
		return this.dao.delete(student);
	}

}
