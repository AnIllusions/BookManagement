package com.ambow.dao;

import java.util.List;
import com.ambow.model.Major;

public interface MajorDao {

	boolean addMajor(Major major);

	List<Major> queryAll(String hql);

	Major queryById(Class c, Integer id);

	boolean deleteMajor(Major major);

	boolean updateMajor(Major major);

	List<Major> queryByProperty(String hql, String[] param);

	Major queryOneByName(String hql, String[] param);

}
