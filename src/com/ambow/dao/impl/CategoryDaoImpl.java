package com.ambow.dao.impl;

import java.util.List;

import com.ambow.dao.CategoryDao;
import com.ambow.model.Category;
import com.ambow.utils.BaseDAO;

public class CategoryDaoImpl implements CategoryDao {

	@Override
	public boolean addCategory(Category category) {
		return BaseDAO.add(category);
	}

	@Override
	public List<Category> queryAll(String hql) {
		return BaseDAO.queryAll(hql);
	}

	@Override
	public Category queryById(Class c,Integer id) {
		return (Category) BaseDAO.get(c,id);
	}

	@Override
	public boolean update(Category category) {
		return BaseDAO.update(category);
	}

	@Override
	public boolean delete(Category category) {
		return BaseDAO.delete(category);
	}

	@Override
	public List<Category> queryByHql(String hql, String[] param) {
		return BaseDAO.query(hql, param);
	}

	@Override
	public Category queryByName(String hql,String[] param) {
		return (Category) BaseDAO.queryOne(hql, param);
	}

}
