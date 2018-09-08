package com.ambow.utils;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.junit.Test;


public class Test1 {
	@SuppressWarnings("deprecation")
	@Test
   public void test(){
		Configuration conf = new Configuration().configure();
		SessionFactory sf=conf.buildSessionFactory();
        System.out.println(sf);
	}
	
}
