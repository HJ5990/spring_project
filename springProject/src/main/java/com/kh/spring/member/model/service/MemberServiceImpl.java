package com.kh.spring.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.spring.member.model.dao.MemberDao;
import com.kh.spring.member.model.vo.Member;


// @component : 해당 객체 등록할때 사용하는 어노테이션 
@Service
public class MemberServiceImpl implements MemberSerivce {
	
	@Autowired
	private MemberDao memberDao;
	@Autowired   // 외부 라이브러리지만 root-context.xml 의 빈에 등록에 놓았기에 사용가능
	private SqlSessionTemplate sqlSession;
	

	@Override
	public Member loginMember(Member m) {
		
		// SqlSession sqlSession = Template.getSqlSession();
		// Member loginUser = MemberDao.loginMamber(sqlSession, m);
		return memberDao.loginMember(sqlSession, m);

	}

	@Override
	public int insertMember(Member m) {
		return memberDao.insertMember(sqlSession, m);
	}

	@Override
	public int updateMember(Member m) {
		return memberDao.updateMember(sqlSession, m);
	}

	@Override
	public int daleteMember(String userId) {
		return memberDao.daleteMember(sqlSession, userId);
	}

	@Override
	public int idCheck(String CheckId) {
		// TODO Auto-generated method stub
		return 0;
	}

}
