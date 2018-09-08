package com.ambow.dao;

import java.util.List;

import com.ambow.model.BookFee;


/**
*@author admin
*@version 创建时间：2018年1月3日上午10:42:51
*/
public interface BookFeeDao {

	boolean add(BookFee bookFee);

	List<BookFee> queryByHql(String hql);

	BookFee query(String hql, String[] param);

	boolean update(BookFee bookFee);
	
	

}
