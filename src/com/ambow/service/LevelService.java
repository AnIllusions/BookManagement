package com.ambow.service;

import java.util.List;

import com.ambow.model.Level;


public interface LevelService {
	//添加
	boolean addLevel(Level level);
	//查询全部
	List<Level> queryAll(String hql);
	//根据id查询
	Level queryById(Class<Level> class1, Integer id);
	//删除
	boolean deleteLevel(Level level);
	//更新
	boolean updateLevel(Level level);
	//根据属性用hql语句查询
	List<Level> queryByProperty(String hql, String[] param);
	//根据层次名查询
	Level queryOneByName(String levelName);

}
