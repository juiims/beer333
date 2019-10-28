package com.beer.test;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.beer.dao.beer.BeerDao;
import com.beer.vo.beer.BeerVo;

public class BeerTest {
	public static void main(String[] args) {

		ApplicationContext factory = new ClassPathXmlApplicationContext("applicationContext.xml");

//	MemberDao memberdao = factory.getBean("member", MemberDao.class);
		BeerDao beerdao = factory.getBean("beer", BeerDao.class);

//	beerdao.beerDelete("b0019");
//	beerdao.beerUpdate("��׽�2", 12, "ALE", 43, 11, "�޴��մϴ�", "���ֻ������", "����Ʈ����", "b0022");
//	

//	BeerVo vo  = new BeerVo();
//	vo.setBname("��׽�4");
//	vo.setAvu(11);
//	vo.setType("ALE");
//	vo.setIbu(20);
//	vo.setSrm(20);
//	vo.setAroma("�޴�");
//	vo.setPhoto("����");
//	vo.setBr_name("����Ʈ����");
//	beerdao.beerInsert("��׽�5", 12, "ALE", 43, 11, "�޴��մϴ�", "���ֻ������", "����Ʈ����");
		List<BeerVo> res = beerdao.execbeerFilter("", "", 0, 100, "");

		((ClassPathXmlApplicationContext) factory).close();
	}
}
