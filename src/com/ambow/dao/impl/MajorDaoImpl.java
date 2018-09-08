package com.ambow.dao.impl;

import java.util.List;

import com.ambow.dao.MajorDao;
import com.ambow.model.Major;
import com.ambow.utils.BaseDAO;



public class MajorDaoImpl implements MajorDao {

	@Override
	public boolean addMajor(Major major) {
		return BaseDAO.add(major);
	}

	@Override
	public List<Major> queryAll(String hql) {
		return BaseDAO.queryAll(hql);
	}

	@Override
	public Major queryById(Class c, Integer id) {
		return (Major) BaseDAO.get(c, id);
	}

	@Override
	public boolean deleteMajor(Major major) {
		return BaseDAO.delete(major);
	}

	@Override
	public boolean updateMajor(Major major) {
		return BaseDAO.update(major);
	}

	@Override
	public List<Major> queryByProperty(String hql, String[] param) {
		return BaseDAO.query(hql, param);
	}


	@Override
	public Major queryOneByName(String hql, String[] param) {
		return (Major) BaseDAO.queryOne(hql, param);
	}

}
