package com.ambow.service;

import java.util.List;

import com.ambow.model.Category;



public interface CategoryService {
	//添加类别
	boolean addCategory(Category category);
	//查询全部
	List<Category> queryAll(String hql);
	//根据id查询
	Category queryById(Class c,Integer id);
	//更新
	boolean update(Category category);
	//删除
	boolean delete(Category category);
	//通过hql查询
	List<Category> queryByHql(String hql, String[] param);
	//通过类别名查询
	Category queryOneByName(String categoryName);

}
