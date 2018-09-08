package com.ambow.service;

import java.util.List;

import com.ambow.model.Student;


public interface StudentService {
	//添加成功
	boolean addStudent(Student student);
	//查询全部
	List<Student> queryAll(String hql);
	//通过id查询
	Student queryById(Class c,Integer id);
	//通过属性查询（学号/类别、层次等）
	List<Student> queryByProperty(String hql, String[] param);
	//删除学生
	boolean delete(Student student);

}
