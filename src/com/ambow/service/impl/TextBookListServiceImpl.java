package com.ambow.service.impl;

import java.util.List;

import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.model.TextBook;
import com.ambow.service.TextBookListService;

public class TextBookListServiceImpl implements TextBookListService {

	@Override
	public List<TextBook> getAllBooks(Class<TextBook> class1) {
		GetAllEntityDao getDao = new GetAllEntityDaoImpl();
		return getDao.getAll(TextBook.class);
	}

	@Override
	public List<TextBook> getBooksByXXXX(Class<TextBook> class1, String name,
			String author, String publish) {
		GetAllEntityDao getDao = new GetAllEntityDaoImpl();
		String hql = "from TextBook where name like ? and author like ? and publish like ?";
		
		return   getDao.getListByHQL(hql, name,author,publish);
	}

	

}
