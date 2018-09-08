package com.ambow.service;
import java.util.List;

import com.ambow.model.BookFee;



/**
*@author admin
*@version 创建时间：2018年1月3日上午10:41:54
*/
public interface BookFeeService {

	boolean add(BookFee bookFee);

	List<BookFee> queryByHql(String string);
	//查看该学生本学期是否需要缴费
	BookFee query(String hql, String[] param);
	//缴费
	boolean update(BookFee bookFee);

}
