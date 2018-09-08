package com.ambow.service.impl;

import java.util.List;

import com.ambow.dao.MajorDao;
import com.ambow.dao.impl.MajorDaoImpl;
import com.ambow.model.Major;
import com.ambow.service.MajorService;


public class MajorServiceImpl implements MajorService {
	MajorDao dao = new MajorDaoImpl();
	@Override
	public boolean addMajor(Major major) {
		return this.dao.addMajor(major);
	}
	@Override
	public List<Major> queryAll(String hql) {
		return this.dao.queryAll(hql);
	}
	@Override
	public Major queryById(Class c, Integer id) {
		return this.dao.queryById(c,id);
	}
	@Override
	public boolean deleteMajor(Major major) {
		return this.dao.deleteMajor(major);
	}
	@Override
	public boolean updateMajor(Major major) {
		return this.dao.updateMajor(major);
	}
	@Override
	public List<Major> queryByProperty(String hql, String[] param) {
		return this.dao.queryByProperty(hql,param);
	}
	@Override
	public Major queryOneByName(String majorName) {
		String hql = "from Major where name=?";
		String[] param = {majorName};
		return this.dao.queryOneByName(hql,param);
	}

}
