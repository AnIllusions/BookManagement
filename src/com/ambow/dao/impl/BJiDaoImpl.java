package com.ambow.dao.impl;

import java.util.List;

import com.ambow.dao.BJiDao;
import com.ambow.model.BJi;
import com.ambow.utils.BaseDAO;




public class BJiDaoImpl implements BJiDao {

	@Override
	public boolean addBji(BJi bJi) {
		return BaseDAO.add(bJi);
	}

	@Override
	public List<BJi> queryAll(String hql) {
		return BaseDAO.queryAll(hql);
	}

	@Override
	public Integer getCount(String hql,int[] param) {
		return BaseDAO.getCount(hql, param);
	}

	@Override
	public BJi queryById(Class c, Integer id) {
		return (BJi) BaseDAO.get(c, id);
	}

	@Override
	public boolean update(BJi bJi) {
		return BaseDAO.update(bJi);
	}

	@Override
	public List<BJi> query(String hql, String[] param) {
		return BaseDAO.query(hql, param);
	}

	@Override
	public List<BJi> queryByHql(String hql) {
		return BaseDAO.queryAll(hql);
	}

	@Override
	public boolean delete(BJi bJi) {
		return BaseDAO.delete(bJi);
	}

	@Override
	public BJi queryOneByName(String hql, String[] param) {
		return (BJi) BaseDAO.queryOne(hql, param);
	}


}
