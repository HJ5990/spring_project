package com.kh.mail;

import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

@Controller
public class Test2 {
	
	@Autowired
	private JavaMailSender sender;
	
	@RequestMapping("send")
	public String mail() {
		// 메세지 생성
		SimpleMailMessage message = new SimpleMailMessage();    //텍스트위주
		message.setSubject("이메일 전송 테스트2(제목)");
		message.setText("이메일 전송 테스트 두번째 입니다 (내용)");
		
		String[] to = {"khj21045990@gmail.com"};  // 받는사람
		message.setTo(to);
		
		String[] cc = {"memory_144@naver.com"};  // 참조
		message.setCc(cc);
		
		sender.send(message);
		
		return "redirect:/";

	}
	
	
	// 하이퍼링크 메일
	@RequestMapping("hypermail")
	public String hyperMail() throws MessagingException {
		// 메일을 보내는 표준 양식 MIME를 통해서 메일을 전송해보자
		MimeMessage message = sender.createMimeMessage();
		
		MimeMessageHelper helper = new MimeMessageHelper(message, false, "UTF-8");
		
		String[] to = {"khj21045990@gmail.com"};
		helper.setTo(to);
		
		String[] cc = {"whgdk9548@gmail.com"};
		helper.setCc(cc);
		
		helper.setSubject("이메일 전송 테스트3");
		// 두번째 인자를 true로 보낼 시 html을 사용하겠다는 의미
		
		String url = ServletUriComponentsBuilder
					.fromCurrentContextPath()
					.port(8011).path("/product")
					.queryParam("product_id", 1002)
					.toUriString();
		helper.setText("<a href='" + url +"'> 웹사이트로 이동 </a>",true);
		
		
		sender.send(message);
		return "redirect:/";
	}
	
	
	// 파일첨부 메일
	@RequestMapping("sendFile")
	public String sendFile() throws MessagingException {
		// 메일을 보내는 표준 양식 MIME를 통해서 메일을 전송해보자
		MimeMessage message = sender.createMimeMessage();
		
		
		// true로 설정하면 멀티파티로 보내게됨
		MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
		
		String[] to = {"khj21045990@gmail.com"};
		helper.setTo(to);
		
		String[] cc = {"whgdk9548@gmail.com"};
		helper.setCc(cc);
		
		helper.setSubject("이메일 전송 테스트4");
		// 두번째 인자를 true로 보낼 시 html을 사용하겠다는 의미
		
		String url = ServletUriComponentsBuilder
					.fromCurrentContextPath()
					.port(8011).path("/product")
					.queryParam("product_id", 1002)
					.toUriString();
		helper.setText("파일 전송합니다.");
		
		// 첨부파일 추가
		// java.activation.DataSource : 파일정보
		DataSource source = new FileDataSource("C:\\Users\\user1\\Downloads\\더미데이터(이미지)\\2023102415001800013.jpg");
		helper.addAttachment(source.getName(), source);
		
		sender.send(message);
		return "redirect:/";
	}

}
