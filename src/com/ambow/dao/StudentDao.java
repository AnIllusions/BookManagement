package com.ambow.dao;

import java.util.List;
import com.ambow.model.Student;
public interface StudentDao {

	boolean add(Student student);

	List<Student> queryAll(String hql);

	Student queryById(Class c, Integer id);

	List<Student> queryByProperty(String hql, String[] param);

	boolean delete(Student student);

}
