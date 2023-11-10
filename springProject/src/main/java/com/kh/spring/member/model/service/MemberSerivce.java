package com.kh.spring.member.model.service;

import com.kh.spring.member.model.vo.Member;

public interface MemberSerivce {
	
	// 로그인서비스(select)
	Member loginMember(Member m);
	
	// 회원가입서비스(insert)
	int insertMember(Member m);
	
	// 회원정보수정(update)
	int updateMember(Member m);
	
	// 회원탈퇴(update)
	int daleteMember(String userId);
	
	// 아이디중복체크 (select)
	int idCheck(String CheckId);
	
}
