package com.ambow.utils;

import java.io.Serializable;
import java.sql.Date;
import java.util.List;
import java.util.ArrayList;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.ambow.model.Cell;
import com.ambow.model.Operator;
import com.ambow.model.StockCheck;
import com.ambow.model.TextBook;


public class BaseDAO {
      /**
       * @param obj 添加数据
       * @return
       */
	 
      public static boolean add(Object obj)
      {
        Session session=null;
        Transaction tran=null;
        boolean result=false;
        try
        {
            session=HibernateUtil.getSession();
            tran=session.beginTransaction();
            session.save(obj);
            tran.commit();
            result=true;
        }
        catch (Exception e)
        {
          System.out.println(e);
        }
        finally
        {
            if(session!=null)
            {
                //�ر�session
                //session.close();
            }
        }
        return result;
      }
      
      /**
     * @return 更新数据 
     * 参数为修改的主键id对象
     */
    public static boolean update(Object object)
      {
            Session session=null;
            Transaction tran=null;
            boolean result=false;
            try
            {
                session=HibernateUtil.getSession();
                tran=session.beginTransaction();
                session.clear();
                session.update(object);
                tran.commit();
                result=true;
            }
            catch (Exception e)
            {

                System.out.println(e);
            } 
            return result;
          }
         
    
       /**
      * @param c
      * @param id  查询一条数据根据主键的id号
      * @return
      */
      public static Object get(Class c,int id)
      {
            Session session=null;
            Object object=null;
            try
            {
                session=HibernateUtil.getSession();
                object=session.get(c,id);
            }
            catch (Exception e)
            {

                System.out.println(e);
            }
            return object;
      }



      /**
     * @param obj
     * @return 删除数据
     */    
    public static boolean delete(Object obj)
      {
            Session session=null;
            Transaction tran=null;
            boolean result=false;
            try
            {
                session=HibernateUtil.getSession();
                tran=session.beginTransaction();
                session.delete(obj);
                tran.commit();
                result=true;
            }
            catch (Exception e)
            {

                System.out.println(e);
            }
            return result;
      }


    /**
   * @param <T> 查询多条记录
   * @param sql  sql语句
   * @param param 参数数组
   * @return
   */
     @SuppressWarnings("unchecked")
    public static <T> List<T> query(String sql,String[] param)
      {

          List<T> list=new ArrayList<T>();
          Session session=null;
           try
            {
                session=HibernateUtil.getSession();
                Query query=session.createQuery(sql);
                if(param!=null)
                {
                    for(int i=0;i<param.length;i++)
                    {
                        query.setString(i,param[i]);    
                    }
                }
                list=query.list();
            }
            catch (Exception e)
            {

                System.out.println(e);
            }
          return list;
      }
     /**
    * @param sql
    * @param param 查询单条记录
    * @return
    */
    public static Object queryOne(String sql,String[] param)
      {
          Object object=null;
          Session session=null;
           try
            {
                session=HibernateUtil.getSession();
                Query query=session.createQuery(sql);
                if(param!=null)
                {
                    for(int i=0;i<param.length;i++)
                    {
                        query.setString(i,param[i]);    
                    }
                    object=query.uniqueResult();
                }
            }
            catch (Exception e)
            {

                System.out.println(e);
            } 
          return object;
      }
    /*
     * @param hql
     * @return
     */
    public static <T> List<T> queryAll(String hql){
    	List<T> list=new ArrayList<T>();
        Session session=null;
         try
          {
              session=HibernateUtil.getSession();
              Query query=session.createQuery(hql);
              list=query.list();
          }
          catch (Exception e)
          {
          }
          finally
          {
              if(session!=null)
              {
              	HibernateUtil.clossSession();
              }
          }
        return list;
    }
    /**
     * @param <T>
     * @param sql 语句
     * @param param  查询参数
     * @param page 页码  第几页
     * @param size 每页数量
     * @return 实现分页查询
     */
    @SuppressWarnings("unchecked")
    public static <T> List<T> queryByPage(String sql,String[] param,int page,int size)
      {
          List<T> list=new ArrayList<T>();
          Session session=null;
           try
            {
                session=HibernateUtil.getSession();
                Query query=session.createQuery(sql);
                if(param!=null)
                {
                    for(int i=0;i<param.length;i++)
                    {
                        query.setString(i,param[i]);    
                    }
                }
                //筛选条数
                query.setFirstResult((page-1)*size);
                query.setMaxResults(size);
                list=query.list();
            }
            catch (Exception e)
            {
                System.out.println(e);
            } 
          return list;
      }
    /**
     * @param hql
     * @param pras
     * @return返回数据个数
     */
    public static int getCount(String hql, String[] pras) {
        int resu = 0;
        Session s = null;
        try {
            s = HibernateUtil.getSession();
            Query q = s.createQuery(hql);
            if (pras != null) {
                for (int i = 0; i < pras.length; i++) {
                    q.setString(i, pras[i]);
                }
            }
            resu = Integer.valueOf(q.iterate().next().toString());
        } catch (Exception e) {

            System.out.println(e);
        } 
        return resu;
    }
    /**
     * @param hql
     * @param pras
     * @return返回数据个数
     */
    public static Integer getCount(String hql, int[] pras) {
        int resu = 0;
        Session s = null;
        try {
            s = HibernateUtil.getSession();
            Query q = s.createQuery(hql);
            if (pras != null) {
                for (int i = 0; i < pras.length; i++) {
                    q.setInteger(i, pras[i]);
                }
            }
            resu = Integer.valueOf(q.iterate().next().toString());
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (s != null)
            	HibernateUtil.clossSession();
        }
        return resu;
    }
}
