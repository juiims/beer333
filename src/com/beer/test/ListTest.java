package com.beer.test;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.beer.dao.list.ListDao;

public class ListTest {

	public static void main(String[] args) {

		ApplicationContext factory = new ClassPathXmlApplicationContext("applicationContext.xml");
		ListDao list = factory.getBean("list", ListDao.class);
//		int count = list.deleteList("��õ", "sabcabc123", "b0007");
//		System.out.println(count+"�����Ϸ�");

//		int count2 = list.insertList("��õ", "sabcabc123", "b0007");
//		 System.out.println(count2 + "�Է¿Ϸ�");
	
		list.execbeerList("��õ", "m191027002");
		
		((ClassPathXmlApplicationContext) factory).close();
	}

}
