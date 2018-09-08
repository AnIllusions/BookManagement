package com.ambow.service;

import java.util.List;

import com.ambow.model.Major;


public interface MajorService {
	//添加
	boolean addMajor(Major major);
	//查询全部
	List<Major> queryAll(String hql);
	//通过id查询
	Major queryById(Class<Major> class1, Integer id);
	//删除
	boolean deleteMajor(Major major);
	//更新
	boolean updateMajor(Major major);
	//根据属性查询
	List<Major> queryByProperty(String hql, String[] param);
	//根据专业名查询
	Major queryOneByName(String majorName);

}
