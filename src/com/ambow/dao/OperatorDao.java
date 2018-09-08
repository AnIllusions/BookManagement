package com.ambow.dao;

import java.util.List;
import com.ambow.model.Operator;

public interface OperatorDao {

  Operator operatorLogin(String account, String pwd);

  Operator operatorRegister(Operator operator);

  List<Operator> listByPage(int page);

  boolean update(Operator admin);

  boolean delete(Operator admin);

  public List<Operator> list(String name);

  public <T> boolean  addAdmin(T ops);

  boolean operatormodify(Operator operator);
}
