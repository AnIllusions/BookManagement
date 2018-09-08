package com.ambow.service.impl;

import java.util.List;





import com.ambow.dao.BookFeeDao;
import com.ambow.dao.impl.BookFeeDaoImpl;
import com.ambow.model.BookFee;
import com.ambow.service.BookFeeService;


/**
*@author admin
*@version 创建时间：2018年1月3日上午10:42:18
*/
public class BookFeeServiceImpl implements BookFeeService{
	BookFeeDao dao = new BookFeeDaoImpl();
	@Override
	public boolean add(BookFee bookFee) {
		return this.dao.add(bookFee);
	}
	@Override
	public List<BookFee> queryByHql(String hql) {
		return this.dao.queryByHql(hql);
	}
	@Override
	public BookFee query(String hql, String[] param) {
		return this.dao.query(hql,param);
	}
	@Override
	public boolean update(BookFee bookFee) {
		return this.dao.update(bookFee);
	}

}
