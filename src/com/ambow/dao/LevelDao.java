package com.ambow.dao;

import java.util.List;

import com.ambow.model.Level;

public interface LevelDao {

	boolean addLevel(Level level);

	List<Level> queryAll(String hql);

	Level queryById(Class c, Integer id);

	boolean deleteLevel(Level level);

	boolean update(Level level);

	List<Level> queryByProperty(String hql, String[] param);

	Level queryOneByName(String lhql, String[] param);

}
