package com.ambow.service;

import java.util.List;

import com.ambow.model.BJi;


public interface BJiService {
	//添加班级
	boolean addBji(BJi bJi);
	//查询全部
	List<BJi> queryAll(String hql);
	//得到该班级的人数
	Integer getCount(Integer id);
	//通过id查询
	BJi queryById(Class c,Integer id);
	//修改
	boolean update(BJi bJi);
	//通过名称查询
	List<BJi> query(String className);
	//通过选择查询
	List<BJi> queryByHql(String hql);
	//删除
	boolean delete(BJi bJi);
	
	BJi queryOneByName(String className);


}
