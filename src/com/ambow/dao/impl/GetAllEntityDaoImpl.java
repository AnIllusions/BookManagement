package com.ambow.dao.impl;

import java.io.Serializable;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.transform.Transformers;
import com.ambow.dao.GetAllEntityDao;
import com.ambow.utils.BaseDAO;

public class GetAllEntityDaoImpl implements GetAllEntityDao {
 
  @Override
  public <T> List<T> getAll(Class<T> entityName) {
    String hql = "from " + entityName.getName();
    Query query = getSession().createQuery(hql);
    return query.list();
  }

  @Override
  public <T> List<T> loadAll(Class<T> entityClass) {
    Criteria criteria = createCriteria(entityClass);
    return criteria.list();
  }
  
  @Override
  public <T> List<T> getListBySQL(String sqlString, Class<T> entityName) {
      Query query = this.getSession().createSQLQuery(sqlString)
              .setResultTransformer(Transformers.aliasToBean(entityName));
      return query.list();
  }
  
  @Override
  public <T> List<T> getListByHQL(String hqlString, Object... values) {
      Query query = this.getSession().createQuery(hqlString);
      if (values != null) {
          for (int i = 0; i < values.length; i++) {
              query.setParameter(i, values[i]);
          }
      }
      return query.list();
  }

  /**
   * <createCriteria> <创建单一Criteria对象>
   * 
   * @param entityClass
   * @return
   */
  private <T> Criteria createCriteria(Class<T> entityClass) {
    Criteria criteria = getSession().createCriteria(entityClass);
    return criteria;
  }

  public Session getSession() {
    // 事务必须是开启的(Required)，否则获取不到
    return currentSession();
  }

  public static Session currentSession() {
    Configuration conf = new Configuration().configure();
    Session sess;
    Transaction tx;
    SessionFactory sf;
    sf = conf.buildSessionFactory();
    sess = sf.openSession();
    return sess;
  }

  @Override
  public <T> List<T> getListByProperty(Class<T> entityName, String propertyName, Object value) {
      String hql = "from " + entityName.getName() + " where " + propertyName + "=:value";
      Query query = this.getSession().createQuery(hql);
      query.setParameter("value", value);
      return query.list();
  }

  @Override
  public <T> boolean save(T t) {
    // TODO Auto-generated method stub
    BaseDAO bd = new BaseDAO();
    return bd.add(t);
  }

  @Override
  public <T> void saveOrUpdate(T entity) {
    Session session = getSession();
      try {
        session.beginTransaction();
        session.saveOrUpdate(entity);
        session.flush();
        session.getTransaction().commit();
      } catch (RuntimeException e) {
          throw e;
      }finally{
        session.close();
      }
  }
  public <T> T get(Class<T> entityName, Serializable id) {
    
    return (T) getSession().get(entityName, id);
}
  
  @Override
  public <T> void deleteById(Class<T> entityName, Serializable id) {
    
      delete(get(entityName, id));
      getSession().flush();
  }
  
  @Override
  public <T> void delete(T entity) {
      try {
          Session session = getSession();
          session.beginTransaction();
          session.delete(entity);
          session.getTransaction().commit();
      } catch (RuntimeException e) {
          throw e;
      }
  }
}
