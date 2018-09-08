package com.ambow.dao;

import java.util.List;

import com.ambow.model.Category;

public interface CategoryDao {

	boolean addCategory(Category category);

	List<Category> queryAll(String hql);

	Category queryById(Class c,Integer id);

	boolean update(Category category);

	boolean delete(Category category);

	List<Category> queryByHql(String hql, String[] param);

	Category queryByName(String hql,String[] param);

}
