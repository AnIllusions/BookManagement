package com.ambow.utils;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@SuppressWarnings("deprecation")
public class SessionOperat {

	public static  SessionFactory sf;
	public static ThreadLocal<Session> tlsession = new ThreadLocal<Session>();
   
	static{
    	Configuration cfg = new Configuration().configure();
    	sf=cfg.buildSessionFactory();
    }
	//创建session
    public static Session createSession(){
    	Session session=tlsession.get();
    	if(session==null){
    		session=sf.openSession();
    		tlsession.set(session);
    	}
    	return session;
    }
    //关闭session
	public static void closeSession(){
		Session session=tlsession.get();
		if(session!=null){
			session.close();
		}
		tlsession.set(null);
	}
}
