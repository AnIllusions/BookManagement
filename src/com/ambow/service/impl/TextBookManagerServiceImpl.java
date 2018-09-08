package com.ambow.service.impl;

import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.model.TextBook;
import com.ambow.service.TextBookManagerService;

public class TextBookManagerServiceImpl implements TextBookManagerService {

  @Override
  public boolean addTextBook(TextBook book) {
    GetAllEntityDao get = new GetAllEntityDaoImpl();
    return get.save(book);
  }

}
