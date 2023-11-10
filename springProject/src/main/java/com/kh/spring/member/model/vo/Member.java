package com.kh.spring.member.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/*
 * lombok(롬북)
 * - 자동 코드 생성 라이브러리
 * - 반복되는 getter, setter, toString등의 메서드를 자동으로 생성해줄 수 있는 라이브러리
 * 
 * Lombok 설치방법
 * 	1. 라이브러리 다운로드 후 적용 (pom.xml)
 * 	2. 다운로드 된 jar파일을 찾아서 설치 (설치아이콘 뜨면 그대로 설치하면 되고 안뜨면 cmd창으로)
 * 	3. IDE재실행
 * 
 * Lombok 사용시 주의사항
 * 	- uName, bTitle과 같이 앞글자가 외자인 필드명을 만들지 말 것!
 * 	- 필드명 작성시 적어도 소문자 두글자 이상으로 시작할 것
 */

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Member {
	
	private String userId;
	private String userPwd;
	private String userName;
	private String email;
	private String gender;
	private String age;
	private String phone;
	private String address;
	private Date enrollDate;
	private Date modifyDate;
	private String status;
	

}
