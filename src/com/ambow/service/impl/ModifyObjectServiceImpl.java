package com.ambow.service.impl;

import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.service.ModifyObjectService;

public class ModifyObjectServiceImpl implements ModifyObjectService {

  @Override
  public <T> void saveOrUpdate(T t) {
    GetAllEntityDao get = new GetAllEntityDaoImpl();
    get.saveOrUpdate(t);

  }

}
