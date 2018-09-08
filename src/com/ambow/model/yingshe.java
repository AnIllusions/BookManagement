package com.ambow.model;

import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.tool.hbm2ddl.SchemaExport;
import org.junit.Test;

@SuppressWarnings("deprecation")
public class yingshe {
	@Test
	public void test(){
	  Configuration configuration = new AnnotationConfiguration().configure();   
      SchemaExport sexport = new SchemaExport(configuration);  
      sexport.setFormat(true);
      sexport.setDelimiter(";");  
      sexport.setOutputFile("D:\\auto.sql");  
      //第一个参数 是否生成ddl脚本  第二个参数  是否执行到数据库中
      sexport.create(true, true);  

	}
	
}
