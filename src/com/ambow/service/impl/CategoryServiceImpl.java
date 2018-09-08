package com.ambow.service.impl;

import java.util.List;

import com.ambow.dao.CategoryDao;
import com.ambow.dao.impl.CategoryDaoImpl;
import com.ambow.model.Category;
import com.ambow.service.CategoryService;



public class CategoryServiceImpl implements CategoryService {
	CategoryDao dao =new CategoryDaoImpl();
	@Override
	public boolean addCategory(Category category) {
		return this.dao.addCategory(category);
	}
	@Override
	public List<Category> queryAll(String hql) {
		return this.dao.queryAll(hql);
	}
	@Override
	public Category queryById(Class c,Integer id) {
		return this.dao.queryById(c,id);
	}
	@Override
	public boolean update(Category category) {
		return this.dao.update(category);
	}
	@Override
	public boolean delete(Category category) {
		return this.dao.delete(category);
	}
	@Override
	public List<Category> queryByHql(String hql, String[] param) {
		return this.dao.queryByHql(hql,param);
	}
	@Override
	public Category queryOneByName(String categoryName) {
		String hql = "from Category where name=?";
		String[] param = {categoryName};
		return this.dao.queryByName(hql,param);
		
	}

}
