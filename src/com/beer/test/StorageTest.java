package com.beer.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.beer.dao.storage.StorageDao;

public class StorageTest {

	public static void main(String[] args) {
		
		ApplicationContext factory = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		StorageDao storage = factory.getBean("storage", StorageDao.class);
		
		storage.memberPhotoUpdate("������ ȸ���������", "sabcabc123");
//		storage.memberPhotoUpdate("", "sabcabc123");
		
		((ClassPathXmlApplicationContext) factory).close();
	}
}
