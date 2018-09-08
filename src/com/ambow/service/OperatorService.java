package com.ambow.service;

import java.util.List;
import com.ambow.model.Operator;

public interface OperatorService {

  Operator operatorLogin(String account, String pwd);

  Operator operatorRegister(Operator operator);

  public <T>boolean addAdmin(T ops);

  List<Operator> getAllAdmin(Class<Operator> class1);

  List<Operator> getAdminByRole(String role);
  boolean modify(Operator operator);

}
