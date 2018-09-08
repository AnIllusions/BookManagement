package com.ambow.dao.impl;

import java.util.List;

import com.ambow.dao.OperatorDao;
import com.ambow.model.Operator;
import com.ambow.utils.BaseDAO;

public class OperatorDaoImpl implements OperatorDao {
  BaseDAO bd = new BaseDAO();
  @Override
  public Operator operatorLogin(String account, String pwd) {
	  System.out.println("OperatorDaoImpl.account="+account+" pwd="+pwd);
    String param[] = {account, pwd};
    String sql = "from Operator where account=? and password = ?";
    Operator operator = (Operator) BaseDAO.queryOne(sql, param);
    return operator;
  }

  @SuppressWarnings("static-access")
@Override
  public <T> boolean addAdmin(T op) {
    // TODO Auto-generated method stub
    boolean h =   bd.add(op);
   /*  IBaseDao ibd = new EntityDaoImpl();
     boolean h = ibd.save(op);*/
     return h;
  }

  @Override
  public List<Operator> listByPage(int page) {
    return null;
  }

  @Override
  public boolean update(Operator admin) {
    // TODO Auto-generated method stub
    return false;
  }

  @Override
  public boolean delete(Operator admin) {
    // TODO Auto-generated method stub
    return false;
  }

  @Override
  public List<Operator> list(String name) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public Operator operatorRegister(Operator operator) {
    // TODO Auto-generated method stub
    return null;
  }

@Override
public boolean operatormodify(Operator operator) {
	System.out.println("OperatorDaoImpl.oprator="+operator.getId()+operator.getAccount()+operator.getName()+operator.getPassword()+operator.getPosition()+operator.getRemark()+operator.getRole()+operator.getTel());
	boolean r=BaseDAO.update(operator);
	return r;
}


}
