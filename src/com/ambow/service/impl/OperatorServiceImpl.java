package com.ambow.service.impl;

import java.util.List;

import com.ambow.dao.GetAllEntityDao;
import com.ambow.dao.OperatorDao;
import com.ambow.dao.impl.GetAllEntityDaoImpl;
import com.ambow.dao.impl.OperatorDaoImpl;
import com.ambow.model.Operator;
import com.ambow.service.OperatorService;

public class OperatorServiceImpl implements OperatorService {

  private OperatorDao dao = new OperatorDaoImpl();

  @Override
  public Operator operatorLogin(String account, String pwd) {
    return dao.operatorLogin(account, pwd);
  }

  @Override
  public Operator operatorRegister(Operator operator) {
    return dao.operatorRegister(operator);
  }

  @Override
  public <T> boolean addAdmin(T op) {
    // TODO Auto-generated method stub
    return dao.addAdmin(op);
  }

  @Override
  public List<Operator> getAllAdmin(Class<Operator> class1) {
    GetAllEntityDao getAll = new GetAllEntityDaoImpl();
    return  getAll.getAll(class1);
  }

  @Override
  public List<Operator> getAdminByRole(String role) {
    GetAllEntityDao ops = new GetAllEntityDaoImpl();
    return ops.getListByProperty(Operator.class, "role", role);
  }

  @Override
	public boolean modify(Operator operator) {
		return dao.operatormodify(operator);
	}

}
