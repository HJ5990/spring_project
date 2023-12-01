package com.ncs.test.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ncs.test.model.service.MemberService;
import com.ncs.test.model.vo.Member;

@Controller
public class MemberController {
	
	@Autowired
	private MemberService memberService;
	
	@RequestMapping(value="/login.me")
	public ModelAndView loginMember(Member m, ModelAndView mv, HttpSession session) {
		
		Member loginUser = memberService.loginMember(m);
		if(loginUser == null) {  // 로그인실패 => 에러문구를 requestScope에 담고 에러페인지로 포워딩
			mv.addObject("errorMsg", "로그인실패");
			
			// WEB-INF/views/           /common/errorPage         .jsp
			mv.setViewName("views/common/errorPage");		
		} else { // 로그인 성공 => sessionScope에 로그인유저 담아서 메인으로 url 재요청 (리다이렉트)
			session.setAttribute("loginUser", loginUser);
			
			mv.setViewName("redirect:/");	
		}

		return mv;
	}

}
