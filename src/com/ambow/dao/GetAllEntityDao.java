package com.ambow.dao;

import java.io.Serializable;
import java.util.List;

public interface GetAllEntityDao {
  /**
   * <loadAll>
   * <加载全部实体 load方法>
   * @param entityClass 实体类型名称
   * @return 实体集
   */
  public <T> List<T> loadAll(final Class<T> entityClass);
  
  /**
   * <getAll>
   * <获取该类型所有实体 get方法>
   * @param entityName 实体类型名称
   * @return 实体集
   */
  public <T> List<T> getAll(final Class<T> entityName);
  
  /**
   * <getListByProperty>
   * <通过实体类名，属性名称，属性值获取实体集>
   * @param entityName 实体类型名称
   * @param propertyName 属性名称
   * @param value 属性值
   * @return 查询多个实体的List集合
   */
  public <T> List<T> getListByProperty(final Class<T> entityName,
          String propertyName, Object value);
  
  /**
   * <getListByHQL>
   * <根据HQL语句，得到对应的list>
   * @param hqlString HQL语句
   * @param values 不定参数的Object数组
   * @return 查询多个实体的List集合
   */
  public <T> List<T> getListByHQL(String hqlString, Object... values);
  
  /**
   * <getListBySQL>
   * <根据SQL语句，得到对应的list>
   * @param sqlString HQL语句
   * @param entityName 实体类型名称
   * @return 查询多个实体的List集合
   */
  public <T> List<T> getListBySQL(String sqlString, final Class<T> entityName);
  /**
   *添加 保存
   * @param t
   */
  public <T> boolean save(T t);
  
  /**
   * <saveOrUpdate>
   * <方法作用>
   * @param entity 实体
   */
  public <T> void saveOrUpdate(T entity);
  
  /**
   * <deleteById>
   * <根据ID删除数据>
   * @param Id 实体id
   */
  public <T> void deleteById(Class<T> entityName, Serializable id);
  
  /**
   * <delete>
   * <删除实体>
   * @param entity 实体
   */
  public <T> void delete(T entity); 
}
