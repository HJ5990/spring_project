package com.kh.mail;

import java.util.Properties;

import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

// 직접 도구를 생성해서 이메일을 보내보자

// 필요한 것
// gmail계정

/*
 * 
 * Email Prorocol
 * SMTP
 * 이메일을 전송할 때 사용하는 프로토콜 
 * 
 * POP
 * 이메일 서버에 도착한 메일을 클라이언트로 가져올때 사용하는 프로토콜
 * 
 * IMAP
 * 이메일 서버에 직접 접속하여 이메일을 확인할 때 사용하는 프로토콜
 *
 */
public class Test1 {
	public static void main(String[] args) {
		
		// MIME 형식의 메일을 보내기 위해서 JavaMailSender 인터페이스를 사용한다.
		
		
		// 아래의 설정들은 나중에 빈으로 등록해서 사용함
		
		// 계정설정  
		JavaMailSenderImpl sender = new JavaMailSenderImpl();
		sender.setHost("smtp.gmail.com");
		sender.setPort(587); // gmail 전용 포트번호
		sender.setUsername("khj21045990@gmail.com");
		sender.setPassword("ezfp dvbw zdje qmul");
		
		// 옵션설정
		Properties prop = new Properties();
		prop.put("mail.smtp.auth", true);
		prop.put("mail.smtp.starttls.enable", true);
		
		sender.setJavaMailProperties(prop);
		
		
		
		// 메세지 생성
		SimpleMailMessage message = new SimpleMailMessage();
		message.setSubject("이메일 전송 테스트(제목)");
		message.setText("이메일 전송 테스트 첫번째 입니다 (내용)");
		
		String[] to = {"khj21045990@gmail.com"};  // 받는사람
		message.setTo(to);
		
		String[] cc = {"memory_144@naver.com"};  // 참조
		message.setCc(cc);
		
		sender.send(message);
	}
}
