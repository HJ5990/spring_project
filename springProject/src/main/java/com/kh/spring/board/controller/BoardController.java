package com.kh.spring.board.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.kh.spring.board.model.service.BoardService;
import com.kh.spring.board.model.vo.Board;
import com.kh.spring.common.model.vo.PageInfo;
import com.kh.spring.common.template.Pagenation;

@Controller
public class BoardController {

	@Autowired
	private BoardService boardService;
	
//	@RequestMapping("list.bo")
//	public String selectList(@RequestParam(value="cpage", defaultValue="1") int currentPage, Model model) {
//		int boarCount = boardService.selectListCount();
//		
//		PageInfo pi = Pagenation.getPageInfo(boarCount, currentPage, 10, 5);
//		
//		ArrayList<Board> list = boardService.selectList(pi);
//		
//		model.addAttribute("list", list);
//		model.addAttribute("pi",pi);
//		
//		return "board/boardListView";
//	}
	
	@RequestMapping("list.bo")
	public ModelAndView selectList(@RequestParam(value="cpage", defaultValue="1") int currentPage, 
			ModelAndView mv) {
			
		PageInfo pi = Pagenation.getPageInfo(boardService.selectListCount(), currentPage, 10, 5);
		
		mv.addObject("pi",pi)
		  .addObject("list", boardService.selectList(pi))
		  .setViewName("board/boardListView");
		
		return mv;
	}
	
	@RequestMapping("enrollForm.bo")
	public String enrollForm() {
		return "board/boardEnrollForm";
	}
	
	
	@RequestMapping("insert.bo")
	public String insertBoard(Board b, MultipartFile upfile, HttpSession session, Model model) {
//		System.out.println(b);
		System.out.println(upfile);
		// 전달받은 파일이 있을경우 => 파일명 수정 후 서버에 업로드 => 원본명, 업로드된 경로로 b에 담기
		if(!upfile.getOriginalFilename().equals("")) {   // 파일이 있을때 (부정연산자!) 객체 자체는 생성은 되기 때문에 null이 아닌 equals(공백)으로 확인
			String changeName = saveFile(upfile, session);

			b.setOriginName(upfile.getOriginalFilename());
			b.setChangeName("resources/uploadFiles/" + changeName);
		}
		int result = boardService.insertBoard(b);

		if (result > 0) {  // 성공 => 게시글 리스트 페이지 (리다이렉트)
			session.setAttribute("alertMsg", "게시글 등록 성공");
			return "redirect:/list.bo";
			
		} else {  // 실패 => 에러페이지
			model.addAttribute("errorMsg", "게시글 등록 실패");
			return "common/errorMsg";
		}
	}
	
	

	public String saveFile(MultipartFile upfile, HttpSession session) {
		// 파일명 수정 후 서버에 업로드 시키기 ("이미지저장용(2).jpg" => "20231109102712345.jpg")
		// 년월일시분초 + 랜덤숫자 5개 = 확장자
	
		// 원래 파일명
		String originNeme = upfile.getOriginalFilename();
		
		// 시간정보(년월일시분초)
		String currentTime = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());
		
		// 램덤숫자 5자리
		int ranNum = (int)(Math.random() *90000) + 10000;
		
		// 확장자
		String ext = originNeme.substring(originNeme.lastIndexOf("."));
		
		// 합치기 (변경된이름)
		String changeName = currentTime + ranNum + ext;
		
		// 첨부파일 저장할 폴더의 물리적인 경로 저장
		String savePath = session.getServletContext().getRealPath("/resources/uploadFiles/");

		try {
			upfile.transferTo(new File(savePath + changeName));
		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}
		return changeName;
	}
	
	
	@RequestMapping("detail.bo")
	public String selectBoard(int bno, Model model) {
		// 조회수 올리기
		int result = boardService.increaseCount(bno);
		
		if(result > 0) {
			Board b = boardService.selectBoard(bno);
			model.addAttribute("b", b);
			return "board/boardDetailView";
		} else {
			model.addAttribute("errorMsg", "게시글 조회 실패");
			return "common/errorMsg";
		}
	}
	
	@RequestMapping("delete.bo")
	public String deleteBoard(int bno, String filePath, HttpSession session, Model model) {
		int result = boardService.deleteBoard(bno);
		
		if (result > 0) {  // 삭제성공
			// 만약 첨부파일이 있었을 경우 => 삭제하기
			if (!filePath.equals("")) {   // 파일있음 (!연산자)
				// 첨부파일 삭제
				// new File(파일물리경로).delete();
				new File(session.getServletContext().getRealPath(filePath)).delete();				
			}
			session.setAttribute("alertMsg", "게시글 삭제 완료");
			return "redirect:list.bo";
		} else {
			model.addAttribute("errorMsg", "게시글 삭제 실패");
			return "common/errorMsg";
		}
	}
	
	@RequestMapping("updateForm.bo")
	public String updateForm(int bno, Model model) {
		// 현재 내가 수정하기를 클릭한 게시글에 대한 정보를 가지고 이동
		model.addAttribute("b", boardService.selectBoard(bno));
		return "board/boardUpdateForm";
	}
	
	@RequestMapping("update.bo")
	public String updateBoard(Board b, MultipartFile reupfile, String filePath, HttpSession session, Model model) {
		System.out.println(b);
		System.out.println(reupfile);
		
		// 새로운 첨부파일 존재유무 확인
		if(!reupfile.getOriginalFilename().equals("")) {
			
			// 새로운 첨부파일 서버 업로드
			String changeName = saveFile(reupfile, session);

			// 새로운 첨부파일 있다면 => 기존 첨부파일 있는지 확인하고 삭제 
			if(b.getOriginName() != null) {
				new File(session.getServletContext().getRealPath(b.getChangeName())).delete();		
			}
			
			// b객체에 새로운 첨부파일 정보 (원본명, 저장경로) 저장
			b.setOriginName(reupfile.getOriginalFilename());
			b.setChangeName("resources/uploadFiles/" + changeName);
		}
		// b객체 update
		int result = boardService.updateBoard(b);

		// 성공유무 확인 후 페이지 리턴
		if (result > 0) {  // 성공
			session.setAttribute("alertMsg", "게시글 수정 성공");
			return "redirect:/detail.bo?bno=" + b.getBoardNo();
			
		} else {  // 실패
			model.addAttribute("errorMsg", "게시글 수정 실패");
			return "common/errorMsg";
		}
		
	}
	
	
	
	
	
	
	
}
