package com.ncs.test.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ncs.test.model.dao.MemberDAO;
import com.ncs.test.model.service.MemberService;
import com.ncs.test.model.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDao;
	@Autowired   // 외부 라이브러리지만 root-context.xml 의 빈에 등록에 놓았기에 사용가능
	private SqlSessionTemplate sqlSession;
	
	
	
	@Override
	public Member loginMember(Member m) {
		return memberDao.loginMember(sqlSession, m);
	}

	
	
	
}
