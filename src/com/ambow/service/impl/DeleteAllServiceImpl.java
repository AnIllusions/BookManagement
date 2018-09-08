package com.ambow.service.impl;

import java.io.Serializable;
import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.model.Operator;
import com.ambow.service.DeleteAllService;

public class DeleteAllServiceImpl implements DeleteAllService {

  @Override
  public <T> void deleteEntity(Class<T> class1, Serializable id) {
    GetAllEntityDao get = new GetAllEntityDaoImpl();
    get.deleteById(class1, id);
  }
}
