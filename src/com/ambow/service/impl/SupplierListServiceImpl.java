package com.ambow.service.impl;

import java.util.List;

import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.model.Supplier;
import com.ambow.service.SupplierListService;

public class SupplierListServiceImpl implements SupplierListService {

	@Override
	public List<Supplier> getAllSupplier(Class<Supplier> class1) {
		GetAllEntityDao getDao = new GetAllEntityDaoImpl();
		
		return getDao.getAll(class1);
	}

	@Override
	public List<Supplier> getSupplierByName(Class<Supplier> class1, String name) {
		GetAllEntityDao getDao = new GetAllEntityDaoImpl();
		String Sql = "SELECT * FROM supplier WHERE name LIKE '%"+name+"%'";
		return getDao.getListBySQL(Sql, class1);
	}
	
	
	

}
