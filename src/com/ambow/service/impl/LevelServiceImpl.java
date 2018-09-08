package com.ambow.service.impl;
import java.util.List;

import com.ambow.dao.LevelDao;
import com.ambow.dao.impl.LevelDaoImpl;
import com.ambow.model.Level;
import com.ambow.service.LevelService;



public class LevelServiceImpl implements LevelService {
	LevelDao dao = new LevelDaoImpl();
	@Override
	public boolean addLevel(Level level) {
		return this.dao.addLevel(level);
	}
	@Override
	public List<Level> queryAll(String hql) {
		return this.dao.queryAll(hql);
	}
	@Override
	public Level queryById(Class c, Integer id) {
		return this.dao.queryById(c,id);
	}
	@Override
	public boolean deleteLevel(Level level) {
		return this.dao.deleteLevel(level);
	}
	@Override
	public boolean updateLevel(Level level) {
		return this.dao.update(level);
	}
	@Override
	public List<Level> queryByProperty(String hql, String[] param) {
		return this.dao.queryByProperty(hql,param);
	}
	@Override
	public Level queryOneByName(String levelName) {
		String lhql = "from Level where name = ?";
		String[] param = {levelName};
		return this.dao.queryOneByName(lhql,param);
	}

}
