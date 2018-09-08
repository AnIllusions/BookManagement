package com.ambow.service;

import java.io.Serializable;
import com.ambow.model.Operator;

public interface DeleteAllService {

  public <T>void deleteEntity(Class<T> class1, Serializable id);


}
