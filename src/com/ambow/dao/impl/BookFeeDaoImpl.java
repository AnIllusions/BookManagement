package com.ambow.dao.impl;
/**
*@author admin
*@version 创建时间：2018年1月3日上午10:43:08
*/

import java.util.List;

import com.ambow.dao.BookFeeDao;
import com.ambow.model.BookFee;
import com.ambow.utils.BaseDAO;



public class BookFeeDaoImpl implements BookFeeDao{

	@Override
	public boolean add(BookFee bookFee) {
		return BaseDAO.add(bookFee);
	}

	@Override
	public List<BookFee> queryByHql(String hql) {
		return BaseDAO.queryAll(hql);
	}

	@Override
	public BookFee query(String hql, String[] param) {
		return (BookFee) BaseDAO.queryOne(hql, param);
	}

	@Override
	public boolean update(BookFee bookFee) {
		return BaseDAO.update(bookFee);
	}

}
