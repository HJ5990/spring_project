package com.kh.spring.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.member.model.service.MemberSerivce;
import com.kh.spring.member.model.vo.Member;

@Controller    // Controller타입의 어노테이션을 빈 스캐닝을 통해 자동으로 빈 등록
public class MemberController {
	
	// 기존방식 private MemberSerivce memberService = new MemberServiceImpl();
	
	/*
	 * 기존 객체 생성 방식
	 * 	객체간의 결합도가 높아진다(소스코드의 수정이 일어날 경우 연관되어있는 다른 코드들도 전부 다 바꿔줘야한다)
	 * 	서비스가 동시에 매우 많이 호출 될 경우 그만큼 객체가 생성된다
	 * 
	 * Spring의 DI(Dependency Injection)를 이용한 방식
	 * 	객체를 생성해서 주입해줌
	 * 	new라는 키워드없이 선언만 해준다. @Autowired 어노테이션을 반드시 사용해야한다
	 */
	
	@Autowired
	private MemberSerivce memberService;
	
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	
	
	
	/*
	 * Spring에서 파라미터(요청시 전달값)를 받는 방법
	 * 
	 * 1. HttpServletRequest를 이용해서 전달받기(기존 JSP/Servlet방식)
	 * 		해당 메서드의 매개변수로 HttpServletRequest를 작성해두면
	 * 		스프링컨테이너가 해당 메서드를 호출시 자동으로 해당 객체를 생성해서 매개변수로 주입해줌
	 */
	
//	@RequestMapping(value="/login.me")  //RequestMapping타입의 어노테이션을 붙여줌으로서 HandlerMapping등록
//	public String loginMember(HttpServletRequest request) {
//		String userId = request.getParameter("id");
//		String userPwd = request.getParameter("pwd");
//		
//		System.out.println("ID : " + userId);
//		System.out.println("PWD : " + userPwd);
//		
//		return "main";
//	}
	
	
	
	
	/*
	 * 2. @RequestParam() 어노테이션을 이용하는 방법
	 * 		request.getParameter("키")로 벨류를 추출하는 걸 대신 해주는 어노테이션
	 * 
	 * 	value속성에 jsp에서 작성했던 name속성값을 담으면 알아서 해당 매개변수로 받아올 수 있다.
	 * 	만약, 넘어온 값이 비어있는 상태라면 defaultValue 속성으로 기본값을 지정할 수 있다.
	 * 
	 */
	
//	@RequestMapping(value="/login.me")  //RequestMapping타입의 어노테이션을 붙여줌으로서 HandlerMapping등록
//	public String loginMember(@RequestParam(value="id", defaultValue="aaa") String userId,
//								@RequestParam(value="pwd") String userPwd) {
//		
//		System.out.println("ID : " + userId);
//		System.out.println("PWD : " + userPwd);
//		
//		return "main";
//	}
	
	
	
	
	/*
	 * 3. @RequestParam() 어노테이션을  생략하는 방법
	 * 		단, 매개변수를 jsp의 name 속성값(요청시 전달하는 값의 키값)과 동일하게 세팅해줘야 자동으로 값이 주입됨
	 * 		위에서 사용했던 defaultValue 추가 속성은 사용할 수 없음
	 */
	
//	@RequestMapping(value="/login.me")
//	public String loginMember(String id, String pwd) {
//		
//		Member m = new Member();
//		m.setUserId(id);
//		m.setUserPwd(pwd);
//		
//		System.out.println("ID : " + m.getUserId());
//		System.out.println("PWD : " + m.getUserPwd());
//		
//		return "main";
//	}
	
	
	
	/*
	 * 4. 커맨드 객체 방식
	 * 		해당 메서드의 매개변수로
	 * 		요청시 전달값을 담고자하는 VO 클래스의 타입을 세팅 후
	 * 		요청시 전달값의 키값(jsp의 name속성값)을 VO클래스에 담고자하는 필드명으로 작성
	 */
	
//	@RequestMapping(value="/login.me")
//	public String loginMember(Member m) {
//
//		Member loginUser = memberService.loginMember(m);
//		
//		if(loginUser == null) {  // 로그인실패 => 에러문구를 requestScope에 담고 에러페인지로 포워딩
//			System.out.println("로그인 실패");
//		} else { // 로그인 성공 => sessionScope에 로그인유저 담아서 메인으로 url 재요청 (리다이렉트)
//			System.out.println("로그인 성공");
//		}
//		
//		return "main";
//	}
	
	
	
	
	//========================================================================================================
	
	
	/*
	 * 요청처리 후 응답데이터를 담고 응답페이지로 포워딩 또는 url재요청하는 방법
	 * 
	 * 1. 스프링에서 제공하는 Model객체 이용하는 방법
	 * 		포워딩할 응답뷰로 전달하고자하는 데이터를 맵형식 (k-v)으로 담을 수 있는 영역
	 * 		Model객체는 requestScope
	 * 		* setAttribute가 아니라 addAttribute
	 */
	
//	@RequestMapping(value="/login.me")
//	public String loginMember(Member m, Model model, HttpSession session) {
//		
//		Member loginUser = memberService.loginMember(m);
//		
//		if(loginUser == null) {  // 로그인실패 => 에러문구를 requestScope에 담고 에러페인지로 포워딩
//			model.addAttribute("errorMsg", "로그인 실패");
	
//			// WEB-INF/views/           /common/errorPage         .jsp
//			return "/common/errorPage";
//			
//		} else { // 로그인 성공 => sessionScope에 로그인유저 담아서 메인으로 url 재요청 (리다이렉트)
//			session.setAttribute("loginUser", loginUser);
	
//			return "redirect:/";
//		}
//	}
	
	
	
	
	/*
	 * 2. 스프링에서 제공하는 ModelAndView 객체를 사용하는 방법
	 * 
	 * 
	 */
	
	@RequestMapping(value="/login.me")
	public ModelAndView loginMember(Member m, ModelAndView mv, HttpSession session) {
		
		
		

		/** 암호화 작업 전 코드*/ 
		
//		Member loginUser = memberService.loginMember(m);
//		if(loginUser == null) {  // 로그인실패 => 에러문구를 requestScope에 담고 에러페인지로 포워딩
//			mv.addObject("errorMsg", "로그인실패");
//			
//			// WEB-INF/views/           /common/errorPage         .jsp
//			mv.setViewName("common/errorPage");		
//		} else { // 로그인 성공 => sessionScope에 로그인유저 담아서 메인으로 url 재요청 (리다이렉트)
//			session.setAttribute("loginUser", loginUser);
//			
//			mv.setViewName("redirect:/");	
//		}
		
		
		
		
		/** 암호화 작업 후 코드*/ 
		
		// Member m의 userId : 사용자가 입력한 아이디
		//		  m의 userPwd : 사용자가 입력한 비밀번호(평문)
		
		Member loginUser = memberService.loginMember(m);
		
		// loginUser userId : 아이디로 호출한 DB에서 가져온 아이디
		// loginUser userPwd : DB에 기록된 암호화된 비밀번호
		
		// bcryptPasswordEncoder 객체의 matches()
		// matches(평문, 암호문)을 작성하면 내부적으로 복구화등의 작업이 이루어짐
		// 두 구문이 일치하는지 확인 후 일치하면 true를 반환
		
	     if(loginUser == null || !bcryptPasswordEncoder.matches(m.getUserPwd(), loginUser.getUserPwd())) { // 로그인실패 => 에러문구를 requestScope에 담고 에러페이지로 포워딩
//	       model.addAttribute("errorMsg","로그인 실패");
	       mv.addObject("errorMsg","로그인 실패");
	       
	       // /WEB-INF/views/      /common/errorPage      .jsp
	       mv.setViewName("common/errorPage");
	    } else { // 로그인 성공 => sessionScope에 로그인 유저 담아서 메인으로 url 재요청
	       session.setAttribute("loginUser", loginUser);
	       
	       mv.setViewName("redirect:/");
	       
	    }
	       return mv;
	    }
	
	
	
	@RequestMapping(value="/logout.me")
	public ModelAndView logoutMember(ModelAndView mv, HttpSession session) {
		// session.invalidate();   // 세션 전체값 만료
		session.removeAttribute("loginUser");  // 해당 키값만 만료
		mv.setViewName("redirect:/");
		return mv;
	}
	
	
	
	@RequestMapping("/enrollForm.me")
	public String enrollForm() {
		return "member/memberEnrollForm";
	}
	
	
	@RequestMapping("/insert.me")
	public String insertMember(Member m, HttpSession session, Model model) {
		 System.out.println(m);
		 // 1. 한글깨짐 문제 발생 => web.xml에서 스프링에서 제공하는 인코딩 필터 등록
		 
		 // 2. 나이를 입력하지 않을 경우 int 자료형에 빈 문자열이 넘어와 자료형이 맞지 않는 문제 발생
		 // (400 Bad Request Error 발생)
		 // Member 클래스의  age필드 자료형을 int => String으로 변경
		 
		 // 3. 비밀번호가 사용자가 입력한 있는 그대로의 평문임. 보안문제
		 // Bcrypt방식을 이용해서 암호화를 한 후 저장
		 // => 스프링시큐리티 모듈에서 제공 <pom.xml>
		 
		 // 암호화작업
		 String encPwd = bcryptPasswordEncoder.encode(m.getUserPwd());
//		 System.out.println("암호문 : " + encPwd);
		 
		 m.setUserPwd(encPwd);  // Member객체에 userPwd필드에 평문이 아닌 암호문으로 변경
		 
		 int result = memberService.insertMember(m);
		 
		 if (result > 0) {
			 session.setAttribute("alertMsg", "회원가입 성공");   // 리다이렉트니까 세션영역에 담아야함
			 return "redirect:/";
		 } else {
			 model.addAttribute("errorMsg", "회원가입 실패");   // request영역에 담기
			 return "common/errorPage";
		 }
	}
	
	
	@RequestMapping("/myPage.me")
	public String myPage() {
		return "member/myPage";
	}
	
	
	@RequestMapping("/update.me")
	public String updateMember(Member m, HttpSession session, Model model) {
		 int result = memberService.updateMember(m);

		 if (result > 0) {
			 // DB로부터 수정된 회원정보를 다시 조회해서 session영역에 loginUser라는 키값으로 덮어씌워야한다
			 session.setAttribute("loginUser", memberService.loginMember(m));
			 session.setAttribute("alertMsg", "회원정보 수정 성공");   // 리다이렉트니까 세션영역에 담아야함
			 
			 return "redirect:/myPage.me";
		 } else {
			 model.addAttribute("errorMsg", "회원정보 수정 실패");   // request영역에 담기
			 return "common/errorPage";
		 }
	}
	
	@RequestMapping("/delete.me")
	public String daleteMember(Member m, HttpSession session) {
		
		// 1. 암호화된 비밀번호 가져오기
		String encPwd = ((Member)session.getAttribute("loginUser")).getUserPwd();
		

		// 비밀번호 맞는지 확인
		if(bcryptPasswordEncoder.matches(m.getUserPwd(), encPwd)) { //탈퇴가능
			int result = memberService.daleteMember(m.getUserId());
			
			if (result > 0) {  // 탈퇴처리 성공
				session.removeAttribute("loginUser");
				session.setAttribute("alertMsg", "회원탈퇴 성공");
				return "redirect:/";
			} else {  // 탈퇴처리 실패
				session.setAttribute("alertMsg", "회원탈퇴 실패");
				return "redirect:/myPage.me";
			}	
		} else { //탈퇴불가능
			session.setAttribute("alertMsg", "비밀번호 불일치");
			return "redirect:/myPage.me";      // 현재 url이 delete.me로 되어있기 때문에 리다이렉트
		}
	}

		

	
	
}
