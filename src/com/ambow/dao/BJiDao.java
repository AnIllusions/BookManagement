package com.ambow.dao;

import java.util.List;
import com.ambow.model.BJi;



public interface BJiDao {

	boolean addBji(BJi bJi);

	List<BJi> queryAll(String hql);

	Integer getCount(String hql,int[] param);

	BJi queryById(Class c, Integer id);

	boolean update(BJi bJi);

	List<BJi> query(String hql, String[] param);

	List<BJi> queryByHql(String hql);

	boolean delete(BJi bJi);

	BJi queryOneByName(String hql, String[] param);


}
