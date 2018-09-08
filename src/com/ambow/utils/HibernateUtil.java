package com.ambow.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;
import org.hibernate.service.ServiceRegistryBuilder;

public class HibernateUtil {
  public static final SessionFactory sessionFactory;
  // ThreadLocal���Ը������̵߳���ݹ��?��˲���Ҫ���߳̽���ͬ��
  public static ThreadLocal<Session> session = new ThreadLocal<Session>();

  static {
    Configuration cfg = new Configuration().configure();

    // ��Configurationʵ��������SessionFactoryʵ��
    ServiceRegistry serviceRegistry =
        new ServiceRegistryBuilder().applySettings(cfg.getProperties()).buildServiceRegistry();
    sessionFactory = cfg.buildSessionFactory(serviceRegistry);
  }


  public static Session getSession() {
    Session s = session.get();
    // �����̻߳�û��Session���򴴽�һ���µ�Session
    if (s == null) {
      s = sessionFactory.openSession();
      // ����õ�Session�����洢��ThreadLocal����session��
      session.set(s);
    }
    return s;
  }

  public static void clossSession() {
    Session s = session.get();
    if (s != null) {
      s.close();
    }
    session.set(null);
  }

  public static void main(String[] args) {
    System.out.println(HibernateUtil.getSession());
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
}
