package com.ambow.dao.impl;

import java.util.List;

import com.ambow.dao.LevelDao;
import com.ambow.model.Level;
import com.ambow.utils.BaseDAO;



public class LevelDaoImpl implements LevelDao {

	@Override
	public boolean addLevel(Level level) {
		return BaseDAO.add(level);
	}

	@Override
	public List<Level> queryAll(String hql) {
		return BaseDAO.queryAll(hql);
	}

	@Override
	public Level queryById(Class c, Integer id) {
		return (Level) BaseDAO.get(c, id);
	}

	@Override
	public boolean deleteLevel(Level level) {
		return BaseDAO.delete(level);
	}

	@Override
	public boolean update(Level level) {
		return BaseDAO.update(level);
	}

	@Override
	public List<Level> queryByProperty(String hql, String[] param) {
		return BaseDAO.query(hql, param);
	}

	@Override
	public Level queryOneByName(String lhql, String[] param) {
		return (Level) BaseDAO.queryOne(lhql, param);
	}

}
