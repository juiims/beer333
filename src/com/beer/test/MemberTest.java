package com.beer.test;

import java.util.List;
import java.util.Map;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.beer.dao.member.MemberDao;
import com.beer.vo.member.MemberVo;

public class MemberTest {

	public static void main(String[] args) {
		
		ApplicationContext factory = new ClassPathXmlApplicationContext("applicationContext.xml");

		MemberDao member = factory.getBean("member", MemberDao.class);

//		member.memberAll();
//		member.memberPWchange("alswlWKdWKd123", "m191101001");
//		member.memberDelete("m191101003");
//		member.memberUpdate("010010", "���ʱ�", "abc@abc.com", "����", "M191101001");
		member.memberInsert("m191027002", "abcabc123", "abcabc123", "�̼���", "19941111", "010010", "���ʱ�", "abc@abc.com", "����");
		
//		Map<String, Object> res = member.execmemberFilter("", "", "%��%", "", "", "", "", "", "", "");
//		System.out.println(res.get("RES_CURSOR"));
		
//		List<MemberVo> res = member.execmemberFilter("", "", "%��%", "", "", "", "", "", "", "");
		
		((ClassPathXmlApplicationContext) factory).close();
	}
}
