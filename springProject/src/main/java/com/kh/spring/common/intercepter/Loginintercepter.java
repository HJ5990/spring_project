package com.kh.spring.common.intercepter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class Loginintercepter extends HandlerInterceptorAdapter{


	/*
	 *  HandlerInterceptor
	 *  
	 *  -- controller가 실행되기 전 / 실행된 후 낚아채서 실행할 내용을 작성 가능하다
	 *  -- 로그인 유/무 판단, 회원 권한체크
	 *  
	 *  preHandle(전처리) : DispatcherServlet이 컨트롤러를 호출하기 전에 낚아채서 실행
	 *  postHandle(후처리) : 컨드롤러에서 요청처리 후 DispatcherServlet으로 view 정보가 리턴되는 순간 낚아채서 실행
	 *  
	 */
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// return 결과가 true일시 => 기존요청 흐름대로 해당 controller 실행
		// 			  false일시 => controller 실행 안함
		HttpSession session = request.getSession();
		if (session.getAttribute("loginUser") != null) {
			return true;
		} else {
			session.setAttribute("alertMsg", "로그인 후 이용가능한 서비스 입니다");
			response.sendRedirect(request.getContextPath());
			return false;
		}
	}
	
	

	
}
