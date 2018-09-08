package com.ambow.service.impl;

import java.util.List;

import com.ambow.dao.BJiDao;
import com.ambow.dao.impl.BJiDaoImpl;
import com.ambow.model.BJi;
import com.ambow.service.BJiService;




public class BJiServiceImpl implements BJiService {
	BJiDao dao = new BJiDaoImpl();

	@Override
	public boolean addBji(BJi bJi) {
		return this.dao.addBji(bJi);
	}

	@Override
	public List<BJi> queryAll(String hql) {
		return this.dao.queryAll(hql);
	}

	@Override
	public Integer getCount(Integer id) {
		String hql = "select count(*) from Student where bji_id=?";
		//String[] param = {String.valueOf(id)};
		int[] param = {id};
		return this.dao.getCount(hql,param);
	}

	@Override
	public BJi queryById(Class c, Integer id) {
		return this.dao.queryById(c,id);
	}

	@Override
	public boolean update(BJi bJi) {
		return this.dao.update(bJi);
	}

	@Override
	public List<BJi> query(String className) {
		String hql = "from BJi where name = ?";
		String[] param = {className};
		return this.dao.query(hql,param);
	}

	@Override
	public List<BJi> queryByHql(String hql) {
		return this.dao.queryByHql(hql);
	}

	@Override
	public boolean delete(BJi bJi) {
		return this.dao.delete(bJi);
	}

	@Override
	public BJi queryOneByName(String className) {
		String hql = "from BJi where name = ?";
		String[] param = {className};
		return this.dao.queryOneByName(hql,param);
	}

}
