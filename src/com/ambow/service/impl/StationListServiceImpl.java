package com.ambow.service.impl;

import java.util.List;
import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.model.Station;
import com.ambow.service.StationListService;

public class StationListServiceImpl implements StationListService {

	@Override
	public List<Station> getAllStation(Class<Station> class1) {
		GetAllEntityDao getDao = new GetAllEntityDaoImpl();
		return getDao.getAll(class1);
	}

	@Override
	public List<Station> getStationByName(Class<Station> class1, String name) {
	  GetAllEntityDao getDao = new GetAllEntityDaoImpl();
      String Sql = "SELECT * FROM station WHERE name LIKE '%"+name+"%'";
      return getDao.getListBySQL(Sql, class1);

	}

}
